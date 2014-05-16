#!/bin/bash

# Script para crear los enlaces simbólicos originarios (?)
# Uso: ./enlazador_svg.sh RUTA_BASE (ej. huayra-violeta/)

root_folder=$1

cd $root_folder
cd "scalable/"

# Enlaces para la carpeta Actions
cd actions/
ln -sf file-new.svg document-new.svg
ln -sf document-saveas.svg document-save-as.svg
ln -sf edit-undo.svg edit-redo-rtl.svg
ln -sf edit-copy.svg edit.copy.svg
ln -sf edit-paste.svg edit.paste.svg 
ln -sf document-open.svg file-open.svg 
ln -sf document-print.svg file-print.svg 
ln -sf document-save.svg file-save.svg 
ln -sf document-saveas.svg file-saveas.svg 
ln -sf file-new.svg filenew.svg
ln -sf document-open.svg fileopen.svg
ln -sf document-print.svg fileprint.svg 
ln -sf document-print-preview.svg filequickprint.svg
ln -sf document-save.svg filesave.svg
ln -sf document-saveas.svg filesaveas.svg 
ln -sf execute.svg gnome-run.svg
ln -sf down.svg go-down.svg
ln -sf forward.svg go-next.svg
ln -sf back.svg go-previous.svg 
ln -sf dialog-ok.svg gtk-apply.svg 
ln -sf document-close.svg gtk-close.svg 
ln -sf execute.svg gtk-execute.svg
ln -sf back.svg gtk-go-back-ltr.svg
ln -sf forward.svg gtk-go-back-rtl.svg 
ln -sf down.svg gtk-go-down.svg 
ln -sf go-up.svg gtk-go-up.svg 
ln -sf go-bottom.svg gtk-goto-bottom.svg 
ln -sf first.svg gtk-goto-first-ltr.svg 
ln -sf first.svg gtk-goto-last-rtl.svg 
ln -sf go-top.svg gtk-goto-top.svg 
ln -sf go-jump.svg gtk-jump-to-ltr.svg 
ln -sf format-justify-left.svg gtk-justify-left.svg 
ln -sf folder-new.svg gtk-new-dir.svg 
ln -sf file-new.svg gtk-new.svg 
ln -sf dialog-ok.svg gtk-ok.svg 
ln -sf document-open.svg gtk-open.svg 
ln -sf document-properties.svg gtk-properties.svg 
ln -sf application-exit.svg gtk-quit.svg 
ln -sf gtk-cancel.svg gtk-remove.svg 
ln -sf document-revert.svg gtk-revert-to-saved-ltr.svg 
ln -sf document-revert-rtl.svg gtk-revert-to-saved-rtl.svg 
ln -sf dialog-ok.svg gtk-yes.svg 
ln -sf zoom-best-fit.svg gtk-zoom-fit.svg 
ln -sf gtk-about.svg help-about.svg 
ln -sf help.svg help-contents.svg 
ln -sf gtk-goto-last-ltr.svg last.svg 
ln -sf back.svg left.svg 
ln -sf add.svg list-add.svg 
ln -sf gtk-cancel.svg list-remove
ln -sf gtk-cancel.svg list-remove.svg 
ln -sf gnome-stock-mail-new.svg mail_new.svg 
ln -sf gtk-cancel.svg process-stop.svg 
ln -sf forward.svg right.svg 
ln -sf edit-find.svg search.svg 
ln -sf gtk-about.svg stock-about.svg 
ln -sf document-close.svg stock-close.svg 
ln -sf gnome-stock-mail-new.svg stock_mail-compose.svg 
ln -sf folder-new.svg stock_new-dir.svg 
ln -sf gtk_new-window.svg stock_new-window.svg 
ln -sf forward.svg stock_right.svg 
ln -sf gtk-spell-check.svg stock_spellcheck.svg 
ln -sf execute.svg system-run.svg 
ln -sf edit-find.svg system-search.svg 
ln -sf file-new.svg tab-new.svg 
ln -sf file-new.svg tab_new.svg 
ln -sf gtk-spell-check.svg tools-check-spelling.svg 
ln -sf go-top.svg top.svg 
ln -sf go-up.svg up.svg 
ln -sf gtk-fullscreen.svg view-fullscreen.svg 
ln -sf gtk-refresh.svg view-refresh.svg 
ln -sf document-close.svg window-close.svg 
ln -sf gtk_new-window.svg window-new.svg 
ln -sf gtk_new-window.svg window_new.svg 
ln -sf zoom-best-fit.svg zoom-fit-best.svg 
ln -sf zoom-best-fit.svg zoom-fit.svg 
ln -sf gtk-zoom-in.svg zoom-in.svg 
ln -sf gtk-zoom-100.svg zoom-original.svg 
ln -sf gtk-zoom-out.svg zoom-out.svg 
cd ../

# Enlaces para la carpeta Apps

# Enlaces para la carpeta Categories
cd categories/
ln -sf preferences-system.svg gnome-tweak-tool.svg 
ln -sf huayra-menu-education.svg biblioteca-huayra.svg
cd ../

# Enlaces para la carpeta Devices
cd devices/
ln -sf drive-harddisk.svg drive-harddisk-system.svg 
ln -sf drive-cdrom.svg drive-optical.svg 
ln -sf drive-removable-media.svg drive-usb.svg 
cd ../

# Enlaces para la carpeta Emblems

# Enlaces para la carpeta Mimetypes

# Enlaces para la carpeta Places
cd places/
ln -sf folder.svg folder-documents.svg 
ln -sf folder-publicshare.svg folder-remote.svg 
ln -sf folder-movies.svg folder-videos.svg 
ln -sf folder-publicshare.svg gnome-fs-share.svg 
ln -sf folder.svg gtk-directory.svg 
ln -sf folder.svg inode-directory.svg 
ln -sf network-server.svg network-workgroup.svg 
ln -sf desktop.svg other-desktop.svg 
ln -sf start-here.svg start-here-symbolic.svg 
ln -sf folder.svg stock_folder.svg 
ln -sf go-home.svg user-home.svg 
cd ../

# Enlaces para la carpeta Status
cd status/
ln -sf image-missing.svg gtk-missing-image.svg 
cd ../

echo "Listo!"
