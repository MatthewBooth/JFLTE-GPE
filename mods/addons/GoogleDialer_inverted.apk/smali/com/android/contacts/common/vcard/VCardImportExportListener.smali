.class interface abstract Lcom/android/contacts/common/vcard/VCardImportExportListener;
.super Ljava/lang/Object;
.source "VCardImportExportListener.java"


# virtual methods
.method public abstract onCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;I)V
.end method

.method public abstract onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;)V
.end method

.method public abstract onExportProcessed(Lcom/android/contacts/common/vcard/ExportRequest;I)V
.end method

.method public abstract onImportCanceled(Lcom/android/contacts/common/vcard/ImportRequest;I)V
.end method

.method public abstract onImportFailed(Lcom/android/contacts/common/vcard/ImportRequest;)V
.end method

.method public abstract onImportFinished(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;)V
.end method

.method public abstract onImportParsed(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)V
.end method

.method public abstract onImportProcessed(Lcom/android/contacts/common/vcard/ImportRequest;II)V
.end method
