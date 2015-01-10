#!/bin/bash
#### GOptimize by gu5t3r@XDA ####
GOVersion=1.43

# Exclamation mark (!) workaround
set +H &>/dev/null; set +o histexpand &>/dev/null;

#### CHECK FOR BINARIES ####
binaries='TruePNG pngout DeflOpt zipalign basename dirname realpath wc find awk stat cat xargs sed grep chmod 7za nice sleep sort defluff nproc pngcheck mktemp';
if ! which $binaries &>/dev/null; then
	for witch in $binaries; do
		which "$witch" &>/dev/null;
		if [ ${?} -ne 0 ]; then missing="$missing [$witch]"; fi
	done
	echo -e "\n[E] Missing binaries:$missing"; exit 1;
fi
unset -v witch missing binaries;

#### USAGE ####
usage()
{
	local hash; local i=0; while [ $i -lt $((25-${#GOVersion})) ]; do hash="$hash"'#'; let i++; done;
	local name="${0##*/}"; local space; i=0; while [ $i -lt $((35-${#name})) ]; do space=" $space"; let i++; done;
	cat << EOF

#####################[ GOptimize v${GOVersion} ]${hash}###
---------------------------------------------------------------#
  usage: ${name} [options] *.apk ${space}  #
################################################################
  GOptimize optimizes APK's with various tools .:. gu5t3r@XDA  #
################################################################
 OPTIONS:                                                      #
  -h   Show Help                                               #
  -he  Show Help + Extra Help (also accepts -hh)               #
  -p   Optimize PNG's                                          #
  -9   Optimize 9-patch (*.9.png) PNG's while optimizing PNG's #
  -m   [1-16] Multi-Threaded PNG optimization; forces -p       #
  -zz  Use ZopfliPNG instead PNGout (More info in Extra Help)  #
  -zo  Use both PngOut + ZopfliPNG for max PNG compression     #
  -q   Convert PNG's to 8-bit with PngQuant with minimum       #
       required quality [0-100]; -q0 to force conversion       #
  -j   Optimize JPG's with jpegoptim; [0] or [75-100]          #
  -e   [-|??] Clean resources of unneeded languages            #
  -a   Recompress resources.arsc with CL[0-6]                  #
  -d   Recompress classes.dex with CL[0-6]                     #
  -b   Remove debug info from classes.dex for API[1-21] with   #
       baksmali/smali; -d[0-6] required; -d5 recommended       #
  -s   [1,2] Force smali v1 or v2 when removing debug info     #
  -l   Recompress libraries with CL[0-6]                       #
  -r   Recompress APK with  CL[0-6]                            #
  -R   [+,-] Smart Recompression modes, read extra help...     #
  -k   Keep only libraries for architecture: 1 armeabi         #
                                             2 armeabi-v7a     #
                                             3 mips            #
                                             4 mipso32         #
                                             5 x86             #
  -t  Sign APK with Android test certificate                   #
################################################################
EOF
}

usagee()
{
cat << EOF
                         Extra Help                            #
---------------------------------------------------------------#
  PNG Optimization:                                            #
      PNG optimization is lossless and tools used for it are:  #
      TruePNG, PngOut, ZopfliPNG and DeflOpt.                  #
                                                               #
  ZopfliPNG (-z option info):                                  #
      [z] Use ZopfliPNG instead PngOut for better compression  #
       and saving few more kBs at cost of ~20% longer process. #
      [o|b] Use both PngOut + ZopfliPNG for max compression    #
       at cost of extra ~20 longer process compared to [z]     #
                                                               #
  Converting PNG's to 8-bit with PngQuant (-q option)          #
      Converts PNG's to 8-bit with minimum required quality    #
      [0-100]. If quality of converted png is lower than       #
      minimum set threshold original png will be preserved.    #
      -q0 to force conversion; -q100 will skip almost all png  #
      Advanced MIN-MAX thresholds can be used [0-100]-[85-100] #
      PngQuant defaults are -q 45-85; if max threshold not     #
      specified it is set to 100.                              #
                                                               #
  JPG's optimization with jpegoptim                            #
      [0] is lossless optimization and recommended.            #
          It does not recompress jpg's, it just strips all     #
          unnecessary info and optimizes huffman coding.       #
      [75-100] optimizes and recompresses jpg's. Level 95 is   #
          recommended, it will recompress unnecessary big ones #
          and do lossless optimization on other jpg's.         #
                                                               #
  Cleaning resources of unneeded languages with ApkTool v2:    #
      [-]  Remove all unneeded lang. from resources            #
      [??] Keep language with ?? language code                 #
           You can keep multiple languages: -e 'hr en de fr'   #
      [-Ei] Addon option, example "-e 'hr' -Ei" will try       #
            to remove strings that are not required from       #
            required languages except the ones you're keeping. #
            Result: even smaller 'resuorces.arsc'.             #
      If you're cleaning system apps you need to put framework #
      files (framework-res.apk, etc...) in framework directory #
      where apk is located, usually: "PlaceApksHere\framework" #
                                                               #
  Compression Levels:                                          #
      Script always uses 10 passes for compression which       #
      guarantees maximum compression and does not impact       #
      decompression time. Script CL differ in fast bytes.      #
          CL(1) <=>   4 fb        CL(4) <=>  32 fb             #
          CL(2) <=>   8 fb        CL(5) <=>  64 fb             #
          CL(3) <=>  16 fb        CL(6) <=> 128 fb             #
      You can also enter custom fast bytes number to be used   #
      for compression by entering fb[3-258] instead CL.        #
      Examples:   -afb3   -dfb69   -lfb132   -rfb258           #
                                                               #
  APK Recompression (-r option):                               #
      As of v1.25 script uses Smart Recompressing i.e. it      #
      will leave files uncompressed in GOptimized apk that     #
      were uncompressed in original apk which is the best way  #
      for recompressing.                                       #
      -R+ Script will use Smart Recompression plus it will     #
          never compress file formats from below list even if  #
          they were compressed in original apk.                #
      -R- Script will disable Smart Recompress and store       #
          file formats uncompressed only if they are on below  #
          list.                                                #
      Following Android Asset Packaging Tool rules following   #
      list of file formats:                                    #
       "jpg jpeg jpe jfif png gif wav mp2 mp3 ogg aac mpg      #
        mpeg mid midi smf jet rtttl imy xmf mp4 m4a m4v 3gp    #
        3gp 3gpp 3g2 3gpp2 amr awb wma wmv zip lzma xz 7z lua  #
        pxp resS gltxt geo apf zi_"                            #
      should never be compressed as they are already           #
      compressed formats or don't compress well.               #
      Most developers use this file formats for databases and  #
      compressing them would result with application errors.   #
                                                               #
  APK signing with Android test certificate                    #
      Non system apk's and apk's you want to install after     #
      goptimization are needed to be signed. You need Java     #
      configured for signing.                                  #
      Alternative is to patch rom (core.jar) with              #
      Lucky Patcher not to verify signatures.                  #
                                                               #
  Configure Java:                                              #
      To use -b or -e feature you need to enter java bin path  #
      in bin\.JavaPATH file which is usually                   #
      "C:\Program Files\Java\jre[version number]\bin"          #
                                                               #
  GOptimize.cmd Default Options:                               #
      You can edit GOptimize.cmd default options in            #
      bin\.DefaultGO file. GOptimize.cmd default options are:  #
                   "goptimize -p -q50 -j0 -a0 -d6 -l6 *.apk;"  #
################################################################
EOF
}


CLevel()
{
	case "$1" in
		1) echo '4';;
		2) echo '8';;
		3) echo '16';;
		4) echo '32';;
		5) echo '64';;
		6) echo '128';;
		*) 
			if [[ "$1" =~ ^fb[0-9]{1,3}$ ]]; then
				if [ "${1#fb}" -lt 3 ]; then
					echo '3'
				elif [ "${1#fb}" -gt 258 ]; then
					echo '258'
				else
					echo "${1#fb}"
				fi
			else
				echo '4'
			fi
		;;
	esac
}

COptions()
{
	if [ -z "$1" ] || [ "${1#fb}" -eq 0 ]; then
		echo 'a -tzip -mm=Copy -w.. -ssc- -y';
	else
		echo 'a -tzip -mm=Deflate -mx=9 -mfb='"$(CLevel $1)"' -mpass=10 -w.. -ssc- -y';
	fi
}

CCheck()
{
	if ! [[ "$1" =~ ^[0-6]$ || "$1" =~  ^fb[0-9]{1,3}$ && "${1#fb}" -ge 3 && "${1#fb}" -le 258 ]]; then
		return 0;
	else
		return 1;
	fi
}

#### GET OPTIONS ####
unset -v opt_h opt_p nproc opt_m opt_z opt_a opt_r opt_l opt_d opt_k opt_b opt_s opt_t opt_j opt_R opt_e opt_E opt_c opt_q opt_9 SMALI;
while getopts “h:pm:a:r:l:d:b:k:z:s:tj:R:e:E:cq:9” OPTION 2>/dev/null
do
	case $OPTION in
		h)
			opt_h="$OPTARG"
			if [ "$opt_h" = "e" ] || [ "$opt_h" = "h" ]; then
				usage; usagee; exit 0;
			else
				usage; exit 0;
			fi
			;;
		p)
			opt_p=1;
			nproc="$(nproc 2>/dev/null)";
			if [[ "$nproc" =~ ^[0-9]+$ ]] && [ "$nproc" -ge 2 ] && [ "$nproc" -le 16 ]; then
				opt_m="$nproc";
			fi
			;;
		9)
			opt_9='9';
			if [ -z "$opt_p" ]; then
				usage; exit 1;
			fi
			;;
		m)
			opt_m="$OPTARG"
			if ! [[ "$opt_m" =~ ^[1-9]$ ]] && ! [[ "$opt_m" =~ ^1[0-6]$ ]]; then
				usage; exit 1;
			fi
			if [ "$opt_m" = 1 ]; then opt_m=; unset -v opt_m; fi
			opt_p=1;
			;;
		z)
			opt_z="$OPTARG";
			case "$opt_z" in
				z) ;;
				o) ;;
				b) opt_z='o';;
				*) exit 1;;
			esac
			if [ -z "$opt_p" ]; then 
				usage; exit 1;
			elif ! which 'zopflipng' &>/dev/null; then
				echo -e "\n[E] Missing binaries: ZopfliPNG"; exit 1;
			fi 
			;;
		c)
			opt_c='c';
			if [ -z "$opt_p" ] || [ "$opt_q" ]; then
				usage; exit 1;
			fi
			opt_q='0-100';
			;;
		q)
			opt_q="$OPTARG";
			if [[ "$opt_q" =~ ^[0-9]+$ ]]; then opt_q="${opt_q}-100"; fi
			if [ -z "$opt_p" ] || [[ ! "$opt_q" =~ ^[0-9]+-[0-9]+$ ]] || [ "${opt_q##*-}" -lt 85 -o "${opt_q##*-}" -gt 100 -o "${opt_q%%-*}" -lt 0 -o "${opt_q%%-*}" -gt 100 -o "${opt_q%%-*}" -gt "${opt_q##*-}" ] || [ -n "$opt_c" ]; then 
				usage; exit 1;
			elif ! which 'pngquant' &>/dev/null; then
				echo -e "\n[E] Missing binaries: pngquant"; exit 1;
			fi
			;;
		a)
			opt_a="$OPTARG"
			if CCheck "$opt_a"; then usage; exit 1; fi
			;;
		r)
			opt_r="$OPTARG"
			if CCheck "$opt_r"; then usage; exit 1; fi
			;;
		l)
			opt_l="$OPTARG"
			if CCheck "$opt_l"; then usage; exit 1; fi
			;;
		d)
			opt_d="$OPTARG"
			if CCheck "$opt_d"; then usage; exit 1; fi
			;;
		k)
			opt_k="$OPTARG"
			if ! [[ "$opt_k" =~ ^[0-5]$ ]]; then
				usage; exit 1;
			fi
			;;
		b)
			opt_b="$OPTARG"
			if [[ ! "$opt_b" =~ ^[1-9]$ && ! "$opt_b" =~ ^1[0-9]$ && ! "$opt_b" =~ ^2[0-1]$ || ! "$opt_d" ]]; then
				usage; exit 1;
			fi
			if [ -z "$SMALI" ]; then SMALI="smali"; fi
			if [ -z "$opt_s" ]; then opt_s='a'; fi
			;;
		s)
			opt_s="$OPTARG"
			if [ -z "$opt_b" ]; then opt_s=''; fi
			case "$opt_s" in
				1) SMALI_LIST='smali';;
				2) SMALI_LIST='smali2';;
				*) usage; exit 1;;
			esac
			;;
		t)
			opt_t=1;
			;;
		j)
			if ! which "jpegoptim" &>/dev/null; then echo -e "\n[E] Missing binaries: jpegoptim"; exit 1; fi
			opt_j="$OPTARG";
			if ! [[ "$opt_j" =~ ^[0-9]*$ ]] || [[ $opt_j -ne 0 && $opt_j -lt 75 || $opt_j -gt 100 ]]; then
				usage; exit 1;
			fi
			;;
		R)
			opt_R="$OPTARG";
			if [ "$opt_R" != '-' ] && [ "$opt_R" != '+' ] || [ -z "$opt_r" ]; then
				usage; exit 1;
			fi
			;;
		e)
			opt_e="$OPTARG";
			if [ "$opt_e" = '-' ]; then :;
			elif [ -z "$opt_e" ] || [[ ! "$opt_e" =~ ^[a-zA-Z\ ]*$ ]] || [ -n "$(echo "$opt_e" | sed -e 's/ \?[[:alpha:]]\{2\} \?//gI')" ]; then
				usage; exit 1;
			else
				opt_e="$(echo -n "$opt_e" | sed -e 's/./\L&/g')"
			fi
			;;
		E)
			opt_E="$OPTARG";
			if [[ ! "$opt_E" =~ [a-z0-9]+ ]]; then usage; exit 1; fi
			;;
		?)
			usage; exit 1;
			;;
	esac
done

nice='nice -n19';

OP_progress()
{
	case "$(($1%4))" in
		0) echo '-';;
		1) echo '\';;
		2) echo '|';;
		3) echo '/';;
	esac
}


FDefluff()
{
	local fluff_temp="$(mktemp --tmpdir='../tmp' 'XXXXXXXXXXXXXXXX.png')"; chmod 777 "$fluff_temp";
	${nice} defluff <"$1"> "$fluff_temp" && mv -f "$fluff_temp" "$1" || rm -f "$fluff_temp";
}

Optimize_PNG()
{
	local IFS="$SIFS";
	local Q="$opt_q";
	if pngcheck -q "$1" >/dev/null; then
		if [ -n "$opt_q" ]; then
			if [[ "$1" =~ \.9\.[Pp][Nn][Gg]$ ]]; then Q="${Q%%-*}-100"; fi
			${nice} pngquant --force --speed=1 --quality=$Q --output="$1" "$1" >/dev/null;
		fi
		${nice} TruePNG -omax -md keep npTc,npLp -g0 "$1" >/dev/null;
		if [ -z "$opt_z" ] || [ "$opt_z" = 'o' ]; then ${nice} pngout -ks -f6 -knpTc,npLp "$1" >/dev/null; fi
		if [ -n "$opt_z" ]; then ${nice} zopflipng -y --iterations=10 --gom=3 --filters=p --splitting=1 --lossy_transparent --iterations=15 --keepchunks=npTc,npLp "$1" "$1" >/dev/null; fi
		${nice} DeflOpt -k "$1" >/dev/null;
		FDefluff "$1" &>/dev/null;
		${nice} DeflOpt -k "$1" >/dev/null;
	fi
}


GOptimize()
{
	#### DIRECTORY MAGIC ####
	local OPWD="$PWD";
	local DIR="$(realpath "$(dirname "$1")")";
	local APK="$(basename "$1")";
	
	#### START GOPTIMIZE ####
	cd "$DIR";
	if [ -n "$APK" ] && [ -f "$APK" ]; then
		echo;
		#### CHECK IF APK IS PROPER ####
		if ! 7za l -tzip "$APK" &>/dev/null; then
			echo "[E] <[ $APK ]> is NOT zip compatible archive"'!!!';
			return 1;
		fi
		echo "[+] GOptimizing: <[ $APK ]>";
		local GOCHECK="$(7za l -tzip "$APK" 2>/dev/null | sed -n 's/^[ \t]\+[0-9]\+[ \t]\+[0-9]\+[ \t]\+\([0-9]\+\)[ \t].*[ \t]\([0-9]\+\)[ \t].*/\1_\2/gp')";
		
		if [ -d ".go[${APK%.*}]" ]; then rm -rf ".go[${APK%.*}]" 2>/dev/null; fi
		mkdir -m 777 -p ".go[${APK%.*}]/GOApkEX";
		cd ".go[${APK%.*}]";
		mkdir -m 777 -p 'tmp';
		####cp -f "../$APK" "GOTemp.apk";
		zipalign -f 4 "../$APK" "GOTemp.apk" 2>&1 1>/dev/null | grep -vi 'WARNING: header mismatch';
		
		####if [ $? -ne 0 ]; then echo -e '\n[E] File operation errors!!!'; exit 1; fi
		if [ ! -f 'GOTemp.apk' ]; then echo -e '\n[E] File operation errors!!!'; exit 1; fi
		
		
		
		#### REMOVE UNNEEDED LANGUAGES FROM RESOURCES WITH APKTOOL ####
		if [ -n "$opt_e" ]; then
			local user_exclude exclude_lang req_lang min_field min_lang removable_lang apktool_dummy apktool_dummy_fix NTL eNTL fNTL strings_xml_list awk_NTL e_strings_xml mArrayList eArray grepArrays awkArrays fArrayList fArray dArray mPluralsList ePlurals grepPlurals awkPlurals fPluralsList fPlurals dPlurals;
			echo -n ' |- Cleaning resources of unneeded languages...';
			if [ -n "$(7za l -tzip -ssc- -i'!resources.arsc' 'GOTemp.apk' | sed -ne 's/.\+[[:blank:]]\+[[:digit:]]\+[[:blank:]]\+[[:digit:]]\+[[:blank:]]\+\(resources\.arsc\)$/\1/pI')" ]; then
				if java -version &>/dev/null && [ "$(java -version 2>&1) | grep 'java version')" ]; then
					echo '';
					echo " |  |  ...with ApkTool v$(apktool --version)";
					if [ -d "../framework" ]; then
						echo ' |  |- Setting up frameworks...'
						find "../framework/" -maxdepth 1 -mindepth 1 -type f -iname '*.apk' -exec apktool if -p GOATifw "{}" \; &>/dev/null;
					fi
					echo -n ' |  |- Running disassemble test......: '
					if apktool d -s -p GOATifw -o GOATool GOTemp.apk &>disassemble.log; then
						echo -n 'Success!'; sleep 2; echo -ne '\b\b\b\b\b\b\b\b        \r';
						echo -n ' |  |- Running assemble test.........: '
						#### HACK FOR UNKNOWNFILES UNTIL APKTOOL FIXED ####
						if [ -f 'GOATool/apktool.yml' ]; then sed -igo -e '/^unknownFiles:$/,/^$\|^[[:alnum:]].*/{/^unknownFiles:$\|^  .*$/d;}' 'GOATool/apktool.yml'; fi
						###################################################
						if [[ "$opt_E" =~ pp ]]; then echo -n '?'; read -sn1; echo -en '\b'; fi
						apktool b -c -p GOATifw -o GOATool/dist/GOATool.apk GOATool &>assemble1.log;
						if [ -f 'GOATool/build/apk/resources.arsc' ] && [ -f 'GOATool/dist/GOATool.apk' ]; then
							rm -rf 'GOATool/build'; rm -f 'GOATool/dist/GOATool.apk';
							echo -n 'Success!'; sleep 1;
							if [ "$opt_e" != "-" ]; then 
								for each in $opt_e; do user_exclude="$user_exclude"'\|'"$each"; done
								exclude_lang="$user_exclude";
							fi
							#req_lang="$(sed -ne 's#^aapt: warning: string .*; found: \([[:alpha:][:space:]]\+\)#\1#pI' assemble1.log | sed -e 's/\([[:alpha:]]\{2\}\)_[[:alpha:]]\+/\1/gI' | awk '{ j=0; for(i=1;i<=NF;i++){ if( $i ~ /^[[:alpha:]]{2}$/ ){if(j==0)print " "; else printf " "; printf $i; j++} } }')";
							
							NTL="$(sed -n 's/.* '"'"'\([[:alnum:]_\.]*\)'"'"' has no default translation.*/\1/p' assemble1.log)";
							if [ -n "$NTL" ]; then
								fNTL="$(find GOATool/res -type f -regextype sed -iregex 'GOATool/res/values-[[:alpha:]]\{2\}\(-[[:alpha:]]\+\)\?/.*\.xml')"
								echo -ne "\b\b\b\b\b\b\b\b        \r |  |- Detecting required languages... ";
								SIFS="$IFS"; IFS=$'\n';
								for eNTL in $NTL; do
									req_lang="$(grep -l " name=\"$eNTL\"" $fNTL | sed -n 's#.*/values-\([[:alpha:]]\{2\}\).*#\1#p' | awk 'BEGIN{ORS=" "}{print $0}')"$'\n'"$req_lang";
								done;
								IFS="$SIFS";
								req_lang="$(echo -n "$req_lang" | awk '{ j=0; for(i=1;i<=NF;i++){ if( $i ~ /^[[:alpha:]]{2}$/ ){if(j==0)print " "; else printf " "; printf $i; j++} } }')";
							fi
							
							if [ -n "$req_lang" ]; then
								#### DOH, Detect REQUIRED Languages ####
								min_field="$(echo "$req_lang" |  awk '{if (NF<i || i==0)i=NF;} END{print i}')";
								min_lang="$(echo "$req_lang" | sort -uf | awk '{ if (NF=='$min_field') for(i=1;i<=NF;i++) print $i}' | sort -uf | awk '{printf $0 " "}')"
								req_lang="$(echo "$req_lang" | sed -e 's/.*\(en'"$exclude_lang"'\).*/\1/I' | sort -uf)"
								i=0; for each in $min_lang; do if [ $i -eq 0 ]; then min_lang="$each"; else min_lang="$min_lang"'\|'"$each"; fi; i=1; done
								req_lang="$(echo "$req_lang" | sed -e 's/.*\('"$min_lang"'\).*/\1/I' | sort -uf)"
								min_lang="$(echo "$req_lang" | awk '{if($1 != "" )printf $1 " "}')"
								i=0; for each in $min_lang; do if [ $i -eq 0 ]; then min_lang="$each"; else min_lang="$min_lang"'\|'"$each"; fi; i=1; done
								req_lang="$(echo "$req_lang" | sed -e 's/.*\('"$min_lang"'\).*/\1/I' | sort -uf | awk '{if($1 != "" )printf $1 " "}')"
							fi
							sleep 2; echo -ne '\b\b\b\b\b\b\b\b        \r';
							if [ -n "$req_lang" ]; then
								echo -ne "\r";
								echo " |  |- Detected required languages...: $(echo "$req_lang" | sed 's/\(??'"${user_exclude}"'\)/(&)/Ig;s/  / /g;s/^ //;s/ $//;')"; 
								for each in $req_lang; do exclude_lang="$exclude_lang"'\|'"$each"; done
							fi
							removable_lang="$(find 'GOATool/res/' -maxdepth 1 -mindepth 1 -type d -regextype sed -iregex 'GOATool/res/values-[[:alpha:]]\{2\}\(-[[:alpha:]]\+\)\?' -not -iregex 'GOATool/res/values-\(??'"$exclude_lang"'\)\(-[[:alpha:]]\+\)\?' | sed -ne 's#.*/res/values-\([[:alpha:]]\{2\}\)\(-[[:alpha:]]\+\)\?#\1#Ip' | sort -uf)";
							if [ -n "$removable_lang" ]; then
								mkdir -p -m 777 GOATool/res-removed; e1=''; e2=''; e3=''; i=0;
								for each in $removable_lang; do 
									echo -ne "\r |  |- Removing unneeded languages...: ${each}${e1}${e2}${e3}"; e2="$e1"; e1=" $each"; if [ $i -eq 0 ]; then e3=' []o:'; i=1; else e3='[°]o:'; i=0; fi;
									
									find 'GOATool/res/' -maxdepth 1 -mindepth 1 -type d -regextype sed -iregex 'GOATool/res/\(values\(-[[:alnum:]]\+\)\?\|raw\|xml\|drawable\|layout\)-'"${each}"'\(-[[:alnum:]-]\+\)\?' -exec mv -f '{}' 'GOATool/res-removed/' \;;
									
								done
								echo -e '\r |  |- Removing unneeded languages...: Success!     ';
								echo -n ' |  +- Attempting to assemble APK....: ';
								apktool b -c -p GOATifw -o GOATool/dist/GOATool.apk GOATool &>assemble2.log;
								if [ ! -f 'GOATool/build/apk/resources.arsc' ] || [ ! -f 'GOATool/dist/GOATool.apk' ]; then
									apktool_dummy="$(sed -ne 's#.* error: .* [[:alpha:]]\+/\(APKTOOL_DUMMY_[[:alpha:][:digit:]_]\+\) [[:alpha:]]\+.*#\1#Ip' assemble2.log 2>/dev/null)";
									if [ -n "$apktool_dummy" ]; then
										echo -en 'Failed!'; sleep 2; echo -ne '\b\b\b\b\b\b\b\b        \r';
										echo ' |  |- Attempting to fix undetec. req. lang.';
										for each in $apktool_dummy; do apktool_dummy_fix="${apktool_dummy_fix}\|\"${each}\""; done
										
										find GOATool/res-removed/ -type f -iname '*.xml' -exec grep -sil "${apktool_dummy_fix#\\|}" '{}' \; | sed -ne 's#^GOATool/res-removed/\(.*\)/.*#\1#Ip' | sort -uf | xargs -I "{}" mv -f "GOATool/res-removed/{}" "GOATool/res/"
										
										echo -n ' |  +- Attempting to assemble APK....: ';
										apktool b -c -p GOATifw -o GOATool/dist/GOATool.apk GOATool &>assemble3.log;
									fi
								fi
								if [ -f 'GOATool/build/apk/resources.arsc' ] && [ -f 'GOATool/dist/GOATool.apk' ]; then
									echo -n 'Success!';
									
									
									if [ -n "$opt_E" ] && [[ "$opt_E" =~ i ]] && [ -n "$req_lang" ]; then
										strings_xml_list="$(find 'GOATool/res/' -type f -regextype sed -iregex 'GOATool/res/values\(-[[:alnum:]]\+\)\?-[[:alpha:]]\{2\}\(-[[:alnum:]-]\+\)\?/strings\.xml' -not -iregex 'GOATool/res/values.*-\(??'"${user_exclude}"'\).*')";
										if [ -n "$strings_xml_list" ] && [ -n "$NTL" ]; then
											echo -e '\r |  |';
											echo -n ' |  |- Integrating required strings..: ';
											SIFS="$IFS"; IFS=$'\n';
											for eNTL in $NTL; do
												awk_NTL="$awk_NTL|$eNTL";
											done
											for e_strings_xml in $strings_xml_list; do
												cp -rf "${e_strings_xml%/*}" GOATool/res-removed/;
												awk '!/<string|<\/string>/{if($0 ~ /^ *<.+>|<\/.+>$/) print};/ name="(\?\?'"$awk_NTL"')"/,/<\/[[:alpha:]]+>$/' "$e_strings_xml" >tmp/strings.xml && mv -f tmp/strings.xml "$e_strings_xml";
											done
											IFS="$SIFS";
										
											mv -f 'GOATool/build/apk' 'GOATool/build/Wapk';
											rm -f 'GOATool/dist/GOATool.apk';
											if [[ "$opt_E" =~ ppp ]]; then echo -n '?'; read -sn1; echo -en '\b'; fi
											apktool b -c -p GOATifw -o GOATool/dist/GOATool.apk GOATool &>assemble4.log;
											if [ -f 'GOATool/build/apk/resources.arsc' ] && [ -f 'GOATool/dist/GOATool.apk' ]; then
												echo 'Success!';
											
												echo -n ' |  +- Attempting to integrate more..: ';
												
												if [[ "$opt_E" =~ ppp ]]; then echo -n '?'; read -sn1; echo -en '\b'; fi
												find 'GOATool/res/' -type f -regextype sed -iregex 'GOATool/res/values\(-[[:alnum:]]\+\)\?-[[:alpha:]]\{2\}\(-[[:alnum:]-]\+\)\?/.\+\.xml' -not -iregex 'GOATool/res/values.*-\(??'"${user_exclude}"'\).*' -not -iregex '.*/strings\.xml' -exec rm -f '{}' \;;
												
												mv -f 'GOATool/build/apk' 'GOATool/build/Wapk2';
												rm -f 'GOATool/dist/GOATool.apk';
												apktool b -c -p GOATifw -o GOATool/dist/GOATool.apk GOATool &>assemble5.log;
												if [ -f 'GOATool/build/apk/resources.arsc' ] && [ -f 'GOATool/dist/GOATool.apk' ]; then
													echo 'Success!';
												else
													echo -n 'Failed!'; sleep 2;
													mArrayList="$(sed -n 's#.\+ Public symbol array/\([[:alnum:]\._]\+\) declared here is not defined.\+#\1#p' assemble5.log)";
													mPluralsList="$(sed -n 's#.\+ Public symbol plurals/\([[:alnum:]\._]\+\) declared here is not defined.\+#\1#p' assemble5.log)";
													
													if [ -n "$mArrayList" ] || [ -n "$mPluralsList" ]; then
														echo -en '\b\b\b\b\b\b\bFixing...';
														SIFS="$IFS"; IFS=$'\n';
														if [ -n "$mArrayList" ]; then
															for eArray in $mArrayList; do
																grepArrays="$grepArrays\|$eArray";
																awkArrays="$awkArrays|$eArray";
															done
															fArrayList="$(find GOATool/res-removed -type f -regextype sed -iregex 'GOATool/res-removed/values\(-[[:alnum:]]\+\)\?-[[:alpha:]]\{2\}\(-[[:alnum:]-]\+\)\?/arrays\.xml' -not -iregex 'GOATool/res-removed/values.*-\(??'"${user_exclude}"'\).*' | xargs grep -l ' name="\(?\|'"$grepArrays"'\)">')";
															for fArray in $fArrayList; do
																##cp -f "$fArray" "GOATool/res/${fArray#*res-removed/}";
																dArray="GOATool/res/${fArray#*res-removed/}"; mkdir -pm 777 "${dArray%/*}";
																awk '/<(\/)?resources>|<\?xml .+\?>/;/<([[:alpha:]]+-)?array name="\?\?'"$awkArrays"'"/,/<\/([[:alpha:]]+-)?array>$/;' "$fArray" >"GOATool/res/${fArray#*res-removed/}";
															done
														fi
														if [ -n "$mPluralsList" ]; then
															for ePlurals in $mPluralsList; do
																grepPlurals="$grepPlurals\|$ePlurals";
																awkPlurals="$awkPlurals|$ePlurals";
															done
															fPluralsList="$(find GOATool/res-removed -type f -regextype sed -iregex 'GOATool/res-removed/values\(-[[:alnum:]]\+\)\?-[[:alpha:]]\{2\}\(-[[:alnum:]-]\+\)\?/plurals\.xml' -not -iregex 'GOATool/res-removed/values.*-\(??'"${user_exclude}"'\).*' | xargs grep -l ' name="\(?\|'"$grepPlurals"'\)">')";
															for fPlurals in $fPluralsList; do
																##cp -f "$fArray" "GOATool/res/${fArray#*res-removed/}";
																dPlurals="GOATool/res/${fPlurals#*res-removed/}"; mkdir -pm 777 "${dPlurals%/*}";
																awk '/<(\/)?resources>|<\?xml .+\?>/;/<([[:alpha:]]+-)?plurals name="\?\?'"$awkPlurals"'"/,/<\/([[:alpha:]]+-)?plurals>$/;' "$fPlurals" >"GOATool/res/${fPlurals#*res-removed/}";
															done
														fi
														IFS="$SIFS";
														
														apktool b -c -p GOATifw -o GOATool/dist/GOATool.apk GOATool &>assemble6.log;
														if [ -f 'GOATool/build/apk/resources.arsc' ] && [ -f 'GOATool/dist/GOATool.apk' ]; then
															echo -e '\b\b\b\b\b\b\b\b\bSuccess2!';
														else
															echo -ne '\b\b\b\b\b\b\b\b\bFailed2! '; sleep 2; echo -e '\b\b\b\b\b\b\b\b\bSkipping2!';
															if [ -d 'GOATool/build/apk' ]; then rm -rf 'GOATool/build/apk'; fi
															mv -f 'GOATool/build/Wapk2' 'GOATool/build/apk';
														fi
													else
														echo -e '\b\b\b\b\b\b\bSkipping!';
														if [ -d 'GOATool/build/apk' ]; then rm -rf 'GOATool/build/apk'; fi
														mv -f 'GOATool/build/Wapk2' 'GOATool/build/apk';
													fi
												fi
											else
												echo -n 'Failed!'; sleep 2; echo -e '\b\b\b\b\b\b\bSkipping!';
												if [ -d 'GOATool/build/apk' ]; then rm -rf 'GOATool/build/apk'; fi
												mv -f 'GOATool/build/Wapk' 'GOATool/build/apk';
											fi
										else
											echo;
										fi
									else
										echo;
									fi
									
									
									cd 'GOATool/build/apk';
									if [ -z "$opt_E" ] || [[ ! "$opt_E" =~ a ]]; then
										if [ -d 'res' ]; then
											find '../../res-removed' -maxdepth 1 -mindepth 1 -type d | sed -ne 's@^\.\./\.\./res-removed/@res/@Ip' | sed -e '/^res\/values-/Id;s/^\(res\/[[:alpha:]]\+-[[:alpha:]]\{2\}-\)r\([[:alpha:]]\{2\}.*\)/\1\2/I'> ../rmove_list
											if [ -s ../rmove_list ]; then
												7za d -y -ssc- -tzip -i@../rmove_list "../../../GOTemp.apk" >/dev/null
											fi
										fi
										if [ -n "$(7za l -ssc- -i'!resources.arsc' "../../../GOTemp.apk" | sed -ne 's/.*[ \t]\+\([0-9]\+\)[ \t]\+\([0-9]\+\)[ \t]\+/\1|\2|/p' | awk -F '|' 'BEGIN{IGNORECASE = 1} { if ( $1 == $2 && $2 != 0 ) print $3 }')" ]; then
											7za $(COptions) -i'!resources.arsc' "../../../GOTemp.apk" >/dev/null
										else
											7za $(COptions fb8) -i'!resources.arsc' "../../../GOTemp.apk" >/dev/null
										fi
									else
										if [ -d 'res' ]; then
											find 'res' -type f -not \( -iname '*.png' -or -iname '*.xml' \) >../files_list
											7za d -y -ssc- -tzip -i'!res' "../../../GOTemp.apk" >/dev/null
										else
											echo -n '' >../files_list
										fi
										7za l "../../../GOTemp.apk" | sed -ne 's/.*[ \t]\+\([0-9]\+\)[ \t]\+\([0-9]\+\)[ \t]\+/\1|\2|/p' | awk -F '|' 'BEGIN{IGNORECASE = 1} { if ( $1 == $2 && $2 != 0 && $3 !~ /.*\.png$/ ) print $3 }' >../store_list
										7za $(COptions fb8) -i'!resources.arsc' -ir'!*.*' -i@../files_list -x@../store_list -xr'!*.png' -x'!AndroidManifest.xml' -x'!META-INF' -x'!lib' -x'!classes.dex' "../../../GOTemp.apk" >/dev/null
										7za $(COptions) -ir'!*.png' -i@../store_list -x'!AndroidManifest.xml' -x'!META-INF' "../../../GOTemp.apk" >/dev/null
									fi
									cd '../../../';
									GOCHECK="$(7za l -tzip 'GOTemp.apk' 2>/dev/null | sed -n 's/^[ \t]\+[0-9]\+[ \t]\+[0-9]\+[ \t]\+\([0-9]\+\)[ \t].*[ \t]\([0-9]\+\)[ \t].*/\1_\2/gp')";
								else
									echo -e 'Failed!\r[w] +';
								fi
							else
								echo -e '\r |  +- No removable languages found..: Skipping!';
							fi
						else
							echo -e 'Failed!\r[w] +';
						fi
					else
						echo -e 'Failed!\r[w] +';
					fi
					if [[ "$opt_E" =~ p ]]; then echo -n '?'; read -sn1; echo -en '\b'; fi
					if [ -d "GOATool" ]; then rm -rf "GOATool"; fi
					if [ -d "GOATifw" ]; then rm -rf "GOATifw"; fi
				else
					echo "[E] Cleaning resources FAILED: Java not properly configured"
				fi
			else
				echo; echo ' |  +- No resources.arsc found.......: Skipping!';
			fi
			unset -v user_exclude exclude_lang req_lang min_field min_lang removable_lang apktool_dummy apktool_dummy_fix NTL eNTL fNTL strings_xml_list awk_NTL e_strings_xml mArrayList eArray grepArrays awkArrays fArrayList fArray dArray mPluralsList ePlurals grepPlurals awkPlurals fPluralsList fPlurals dPlurals;
		fi
		
		
		
		
		#### EXTRACT IF NEEDED ####
		local Apk_Was_Extracted;
		if [ "$opt_r" ] || [ "$opt_p" ] || [ "$opt_a" ] || [ "$opt_d" ] || [ "$opt_l" ] || [ "$opt_j" ]; then
			echo " |- Extracting APK..."
			cd 'GOApkEX';
			if [ "$opt_r" ]; then
				7za x -ssc- -y -x'!META-INF' -x'!AndroidManifest.xml' '../GOTemp.apk' >/dev/null
			else
				####if [ "$opt_p" ]; then 7za x -ssc- -y -ir'!*.png' -xr'!*.9.png' '../GOTemp.apk' >/dev/null; fi
				if [ "$opt_p" ]; then 7za x -ssc- -y -ir'!*.png' '../GOTemp.apk' >/dev/null; fi
				if [ "$opt_a" ]; then 7za x -ssc- -y -i'!resources.arsc' '../GOTemp.apk' >/dev/null; fi
				if [ "$opt_d" ]; then 7za x -ssc- -y -i'!classes.dex' '../GOTemp.apk' >/dev/null; fi
				if [ "$opt_l" ]; then 7za x -ssc- -y -i'!lib' '../GOTemp.apk' >/dev/null; fi
				if [ "$opt_j" ]; then 7za x -ssc- -y -ir'!*.jpg' -ir'!*.jpeg' -ir'!*.jpe' -ir'!*.jfif' '../GOTemp.apk' >/dev/null; fi
			fi
			chmod -R 777 '.';
			Apk_Was_Extracted='1';
		fi


		#### OPTIMIZE PNG'S ####
		if [ "$opt_p" ]; then
			local PNGLIST PNG SIFS nof opp size_before size_after MTPPID NMTPPID EMTPPID;
			if [ -z "$opt_9" ]; then
				PNGLIST="`find . -type f -iname '*.png' -not -iname '*.9.png'`";
			else
				PNGLIST="`find . -type f -iname '*.png'`";
			fi
			if [ -z "$PNGLIST" ]; then
				echo -e " |- NO PNG's in APK detected"
			else
				nof="`echo "$PNGLIST" | wc -l`";
				sync > /dev/null 2>&1;
				size_before="`echo "$PNGLIST" | xargs -rI "{}" stat -c%s "{}" 2>/dev/null | awk '{ PNGSIZE += \$1 } END { print PNGSIZE }'`"
				i=0; mi=0; SIFS="$IFS"; IFS=$'\n';
				for PNG in $PNGLIST; do
					if [ -n "$opt_m" ]; then
						Optimize_PNG "$PNG" & MTPPID="${MTPPID}${!}"$'\n'; let mi++;
						wi=0;
						while [ "$mi" -ge "$opt_m" ]; do
							if [ "$wi" -ge 1 ]; then sleep "0.${wi}"; fi
							if [ "$wi" -lt 9 ]; then let wi++; fi
							for EMTPPID in $MTPPID; do
								if kill -0 "$EMTPPID" 2>/dev/null; then
									NMTPPID="${NMTPPID}${EMTPPID}"$'\n';
								else
									let mi--;
								fi
							done
							MTPPID="$NMTPPID"; NMTPPID='';
						done
					else
						Optimize_PNG "$PNG";
					fi
					opp="$(($i*100/$nof))"; echo -en "\r[$(OP_progress $opp)] Optimizing PNG's: $opp%";
					let i++;
				done
				if [ -n "$MTPPID" ]; then for EMTPPID in $MTPPID; do wait $EMTPPID; done; fi
				IFS="$SIFS";
				####ps -a | grep -i "TruePNG\|pngout\|DeflOpt"
				sync >/dev/null 2>&1;
				sleep 1;
				size_after="`echo "$PNGLIST" | xargs -rI "{}" stat -c%s "{}" 2>/dev/null | awk '{ PNGSIZE += \$1 } END { print PNGSIZE }'`"
				let size_before+=0; if [ "$size_before" -eq 0 ]; then size_before=1; size_after=1; fi
				echo -e "\r |- Optimized PNG's: 100% | Saved: $((($size_before-$size_after)/1024)) kB ($((($size_before-$size_after)*100/$size_before))%)"
				#echo " |- Packing PNG's in APK..."
				####7za $(COptions) -ir'!*.png' -xr'!*.9.png' '../GOTemp.apk' >/dev/null;
				7za $(COptions) -ir'!*.png' '../GOTemp.apk' >/dev/null;
			fi
			unset -v PNGLIST PNG SIFS nof opp size_before size_after MTPPID NMTPPID EMTPPID;
		fi


		#### OPTIMIZE JPG'S ####
		if [ "$opt_j" ]; then
			local JPGLIST nof size_before SIFS JPG opp size_after;
			JPGLIST="`find . -type f \( -iname '*.jpg' -or -iname '*.jpeg' -or -iname '*.jpe' -or -iname '*.jfif' \)`"
			if [ -z "$JPGLIST" ]; then
				echo -e " |- NO JPG's in APK detected"
			else
				nof="`echo "$JPGLIST" | wc -l`";
				sync >/dev/null 2>&1;
				size_before="`echo "$JPGLIST" | xargs -rI "{}" stat -c%s "{}" 2>/dev/null | awk '{ JPGSIZE += \$1 } END { print JPGSIZE }'`"
				i=0; SIFS="$IFS"; IFS=$'\n';
				for JPG in $JPGLIST; do
					jpegoptim --strip-all "$JPG" >/dev/null 2>&1
					if [ $opt_j -ne 0 ]; then
						jpegoptim --strip-all --max=${opt_j} "$JPG" >/dev/null 2>&1
					fi
					let i++; opp="$(($i*100/$nof))";
					echo -en "\r[$(OP_progress $opp)] Optimizing JPG's: $opp%";
				done
				IFS="$SIFS";
				sync >/dev/null 2>&1;
				sleep 1;
				size_after="`echo "$JPGLIST" | xargs -rI "{}" stat -c%s "{}" 2>/dev/null | awk '{ JPGSIZE += \$1 } END { print JPGSIZE }'`"
				let size_before+=0; if [ "$size_before" -eq 0 ]; then size_before=1; size_after=1; fi
				echo -e "\r |- Optimized JPG's: 100% | Saved: $((($size_before-$size_after)/1024)) kB ($((($size_before-$size_after)*100/$size_before))%)"
				#echo " |- Packing JPG's in APK..."
				7za $(COptions) -ir'!*.jpg' -ir'!*.jpeg' -ir'!*.jpe' -ir'!*.jfif' '../GOTemp.apk' >/dev/null
			fi
			unset -v JPGLIST nof size_before SIFS JPG opp size_after;
		fi


		#### STORE/RECOMPRESS RESOURCES.ARSC ####
		if [ "$opt_a" ]; then
			if [ -f "resources.arsc" ]; then
				if [ "${opt_a#fb}" -eq 0 ]; then
					echo " |- Storing resources.arsc uncompressed";
				else
					echo " |- Recompressing resources.arsc with CL($opt_a)";
				fi
				7za $(COptions $opt_a) "../GOTemp.apk" "resources.arsc" > /dev/null
			else
				echo " |- NO resources.arsc in APK detected"
			fi
		fi

		#### RECOMPRESS CLASSES.DEX / REMOVE DEBUGGING INFO ####
		if [ "$opt_d" ]; then
			if [ -f "classes.dex" ]; then
				if [ "$opt_b" ]; then
					if java -version &>/dev/null && [ "$(java -version 2>&1) | grep 'java version')" ]; then
					
						if [ -z "$SMALI_LIST" ]; then SMALI_LIST='smali2 smali'; fi
						
						j=0; for SMALI in $SMALI_LIST; do let j++; done
						
						i=0;
						for SMALI in $SMALI_LIST; do
							if [ -d "../smali" ]; then rm -rf ../smali; fi
							if [ $i -eq 0 ]; then
								echo -n " |- Removing debug info; smali$($SMALI --version | sed -ne 's@^\(bak\)\?smali \([0-9a-f\.\-]\+\)\(-dirty\)\? .*$@ v\2@Ip'): "
							else
								echo -n " |  +- Trying to with smali$($SMALI --version | sed -ne 's@^\(bak\)\?smali \([0-9a-f\.\-]\+\)\(-dirty\)\? .*$@ v\2@Ip'): "
							fi
							if [ -f /bin/bak$SMALI ] && [ -f /bin/$SMALI ] &&  [ -f /bin/bak${SMALI}.jar ] && [ -f /bin/${SMALI}.jar ] \
							  && [ ! "$(bak$SMALI -x -b -a${opt_b} -o ../smali classes.dex 2>&1)" ] && [ ! "$($SMALI -a${opt_b} -o ../GOclass.dex ../smali 2>&1)" ]; then
								if [ "$(stat -c%s "../GOclass.dex")" -lt "$(stat -c%s "classes.dex")" ]; then
									rm -f classes.dex; mv -f ../GOclass.dex classes.dex;
									echo 'Success!';
									if [ $i -ne 0 ]; then continue $(($j-$i-1)); fi; break;
								else
									echo 'Already removed!';
									if [ -f "../GOclass.dex" ]; then rm -f ../GOclass.dex; fi
									break;
								fi
							else
								echo -n 'Failed!'; echo -e '\r[w]';
								if [ -f "../GOclass.dex" ]; then rm -f ../GOclass.dex; fi
								let i++;
								if [ $(($i+1)) -ge $j ]; then break; fi
							fi
						done
						if [ -d "../smali" ]; then rm -rf ../smali; fi
						
						
					else
						echo "[E] Removing debugging info FAILED: Java not properly configured"
					fi
				fi
			
				if [ "${opt_d#fb}" -eq 0 ]; then
					echo " |- Storing classes.dex uncompressed";
				else
					echo " |- Recompressing classes.dex with CL($opt_d)";
				fi
				7za $(COptions $opt_d) '../GOTemp.apk' 'classes.dex' > /dev/null
			else
				echo " |- NO classes.dex in APK detected"
			fi
		fi

		#### RECOMPRESS LIBRARIES ####
		if [ "$opt_l" ]; then
			if [ -d "lib" ]; then
				if [ "${opt_l#fb}" -eq 0 ]; then
					echo " |- Storing libraries uncompressed";
				else
					echo " |- Recompressing libraries with CL($opt_l)";
				fi
				7za $(COptions $opt_l) -i'!lib/*/*.*' '../GOTemp.apk' > /dev/null
			else
				echo " |- NO libraries in APK detected"
			fi
		fi

		#### RECOMPRESS APK ####
		if [ "$opt_r" ]; then
			local resources_arsc classes_dex libraries png_files jpg_files i_copy_list x_copy_list r_copy_list store_list noex_list;
			echo " |- Recompressing APK with CL($opt_r)"
			if [ "$opt_a" ]; then resources_arsc='-x!resources.arsc'; fi
			if [ "$opt_d" ]; then classes_dex='-x!classes.dex'; fi
			if [ "$opt_l" ]; then libraries='-x!lib'; fi
			if [ ! "$opt_p" ]; then png_files='-ir!*.png'; fi
			if [ ! "$opt_j" ]; then jpg_files='-ir!*.jpg -ir!*.jpeg -ir!*.jpe -ir!*.jfif'; fi
			
			x_copy_list=; i_copy_list=;
			if [ "$opt_R" = "-" ] || [ "$opt_R" = "+" ]; then
				r_copy_list='9.png gif wav mp2 mp3 ogg aac mpg mpeg mid midi smf jet rtttl imy xmf mp4 m4a m4v 3gp 3gpp 3g2 3gpp2 amr awb wma wmv zip lzma xz 7z lua pxp resS gltxt geo apf zi_';
				for ext in ${r_copy_list}; do x_copy_list="${x_copy_list}"'-xr!*.'"${ext} "; i_copy_list="${i_copy_list}"'-ir!*.'"${ext} "; done
			fi
			store_list=;
			if [ -z "$opt_R" ] || [ "$opt_R" = "+" ]; then
				7za l '../GOTemp.apk' | sed -ne 's/.*[ \t]\+\([0-9]\+\)[ \t]\+\([0-9]\+\)[ \t]\+/\1|\2|/p' | awk -F '|' 'BEGIN{IGNORECASE = 1} { if ( $1 == $2 && $2 != 0 && $3 !~ /.*\.(png|jpg|jpeg|jpe|jfif)$/ ) print $3 }' > ../store_list
				if [ -s '../store_list' ]; then store_list='-x@../store_list'; fi
			fi
			
			find '.' -type f -not -iname '*.*' | sed -n 's#^\./##p' > ../noex_list
			if [ -s '../noex_list' ]; then noex_list='-i@../noex_list'; else noex_list=; fi
			
			${nice} 7za $(COptions $opt_r) -ir'!*.*' ${noex_list} ${resources_arsc} ${classes_dex} ${libraries} ${store_list} -xr'!*.png' -xr'!*.jpg' -xr'!*.jpeg' -xr'!*.jpe' -xr'!*.jfif' ${x_copy_list} "../GOTemp.apk" > /dev/null
			if [ -n "${i_copy_list}${png_files}${jpg_files}" ]; then
				${nice} 7za $(COptions) ${i_copy_list} ${png_files} ${jpg_files} '../GOTemp.apk' > /dev/null
			fi
			unset -v resources_arsc classes_dex libraries png_files jpg_files i_copy_list x_copy_list r_copy_list store_list noex_list;
		fi

		if [ "$Apk_Was_Extracted" ]; then cd '..'; unset -v Apk_Was_Extracted; fi

		#### Check All Files Are In APK####
		if [ "$GOCHECK" != "$(7za l -tzip 'GOTemp.apk' 2>/dev/null | sed -n 's/^[ \t]\+[0-9]\+[ \t]\+[0-9]\+[ \t]\+\([0-9]\+\)[ \t].*[ \t]\([0-9]\+\)[ \t].*/\1_\2/gp')" ]; then
			echo "[E] <[ $APK ]> CORRUPTED during GOptimization"'!!!'
		fi
		unset -v GOCHECK;

		#### KEEP ONLY SELECTED LIBRARIES ####
		if [ "$opt_k" ]; then
			local lib_test lib_keep lib_remove;
			lib_test="$(7za l -i'!lib/*' 'GOTemp.apk' | sed -n 's#^.*[\t ]lib/\([[:alnum:]-]\+\)/.*$#\1#gp' |  awk '!x[$0]++')";
			
			case "$opt_k" in
				1)
					lib_keep="armeabi";
				;;
				2)
					lib_keep="armeabi-v7a"
					if [ ! "`echo "$lib_test" | grep -x "$lib_keep"`" ]; then
						lib_keep="armeabi";
					fi
				;;
				3)
					lib_keep="mips";
				;;
				4)
					lib_keep="mipso32"
					if [ ! "`echo "$lib_test" | grep -x "$lib_keep"`" ]; then
						lib_keep="mips";
					fi
				;;
				5)
					lib_keep="x86";
				;;
			esac
			
			lib_remove="`echo "${lib_test}" | grep -xv "${lib_keep}"`"
			if [ -n "$lib_remove" ]; then
				echo -n " |- Removing libraries for: "; echo -n "$lib_remove" | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/, /g'; echo "";
				7za d -tzip -i'!lib/*' -x'!lib/'"${lib_keep}"'/*' 'GOTemp.apk' >/dev/null
			else
				echo " |- NO libraries to remove..."
			fi
			if [ "`echo -n "$lib_test" | grep -x "$lib_keep"`" ]; then
				echo " |  + Keeping for: [${lib_keep}]"
			fi
			unset -v lib_test lib_keep lib_remove;
		fi

		#### SIGN APK WITH ANDROID TEST CERTIFICATE ####
		if [ -n "$opt_t" ]; then
			echo " |- Signing APK with Android test certificate"
			java -version > /dev/null 2>&1;
			if [ ${?} -eq 0 ] && [ "$(java -version 2>&1) | grep 'java version')" ] &&  [ -f /bin/sign ] && [ -f /bin/sign.jar ]; then
				sign --override "GOTemp.apk"
			else
				echo "[E] Failed: Java not properly configured"
			fi
		fi

		#### ZIPALIGN ####
		echo " +- Zipaligning APK..."
		zipalign -f 4 "GOTemp.apk" "GOZipa.apk" 2>&1 1>/dev/null | grep -vi 'WARNING: header mismatch';
		mv -f "GOZipa.apk" "../$APK"
		if [ $? -ne 0 ]; then echo -e '\n[E] File operation errors!!!'; exit 1; fi
		cd '..';
		## read -sn1;
		rm -rf ".go[${APK%.*}]" 2>/dev/null;

		cd "$OPWD"
		return 0;
	else
		cd "$OPWD"
		if [ -n "$APK" ]; then echo -e "\n[E] <[ $APK ]> does not exist"'!!!'; fi
		return 1;
	fi
}

if [ -z "$*" ]; then usage; exit 0; fi

#### APK LIST LOOP ####
argumentsc=0
apkscount=0
for APK in "$@"; do
	let argumentsc=argumentsc+1
	if [ $argumentsc -lt $OPTIND ]; then continue; fi
	GOptimize "$APK" && let apkscount=apkscount+1
done

if [ $apkscount -eq 0 ]; then usage; exit 1; fi

