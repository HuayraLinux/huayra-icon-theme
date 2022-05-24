#!/bin/bash

# Script para crear los enlaces simbólicos originarios (?)
# Uso: ./enlazador_svg.sh RUTA_BASE (ej. huayra-violeta/)

root_folder=$1

cd $root_folder
cd "scalable/"

# Enlaces para la carpeta Actions
cd actions/
ln -sf add.svg list-add.svg 
ln -sf application-exit.svg gtk-quit.svg 
ln -sf back.svg go-previous.svg 
ln -sf back.svg gtk-go-back-ltr.svg
ln -sf back.svg left.svg
ln -sf back.svg stock_left.svg 
ln -sf dialog-cancel.svg button_cancel.svg
ln -sf dialog-cancel.svg cancel.svg
ln -sf dialog-cancel.svg gtk-cancel.svg
ln -sf dialog-cancel.svg gtk-no.svg
ln -sf dialog-ok.svg gtk-apply.svg 
ln -sf dialog-ok.svg gtk-ok.svg
ln -sf dialog-ok.svg gtk-yes.svg 
ln -sf document-close.svg gtk-close.svg 
ln -sf document-close.svg window-close.svg 
ln -sf document-close.svg stock-close.svg 
ln -sf document-open.svg gtk-open.svg 
ln -sf document-open.svg fileopen.svg
ln -sf document-open.svg file-open.svg 
ln -sf document-print.svg fileprint.svg 
ln -sf document-print.svg file-print.svg 
ln -sf document-print-preview.svg filequickprint.svg
ln -sf document-properties.svg gtk-properties.svg 
ln -sf document-revert.svg gtk-revert-to-saved-ltr.svg 
ln -sf document-revert-rtl.svg gtk-revert-to-saved-rtl.svg 
ln -sf document-save.svg filesave.svg
ln -sf document-saveas.svg filesaveas.svg 
ln -sf document-saveas.svg document-save-as.svg
ln -sf document-save.svg file-save.svg 
ln -sf document-saveas.svg file-saveas.svg 
ln -sf down.svg go-down.svg
ln -sf down.svg gtk-go-down.svg
ln -sf edit-copy.svg edit.copy.svg
ln -sf edit-find.svg system-search.svg 
ln -sf edit-find.svg search.svg 
ln -sf edit-undo.svg edit-redo-rtl.svg
ln -sf edit-paste.svg edit.paste.svg 
ln -sf execute.svg gnome-run.svg
ln -sf execute.svg gtk-execute.svg
ln -sf execute.svg system-run.svg
ln -sf file-new.svg document-new.svg
ln -sf file-new.svg filenew.svg
ln -sf file-new.svg gtk-new.svg
ln -sf tab-new.svg tab_new.svg 
ln -sf first.svg gtk-goto-first-ltr.svg 
ln -sf first.svg gtk-goto-last-rtl.svg 
ln -sf first.svg gtk-goto-first.svg
ln -sf first.svg gtk_stock_goto_first.svg
ln -sf first.svg go-first.svg
ln -sf first.svg start.svg
ln -sf first.svg stock_first.svg
ln -sf folder-new.svg gtk-new-dir.svg 
ln -sf folder-new.svg stock_new-dir.svg 
ln -sf format-justify-left.svg gtk-justify-left.svg 
ln -sf forward.svg go-next.svg
ln -sf forward.svg gtk-go-back-rtl.svg 
ln -sf forward.svg right.svg 
ln -sf forward.svg stock_right.svg
ln -sf gnome-control-center.svg configuration-section.svg
ln -sf gnome-stock-mail-new.svg mail_new.svg 
ln -sf gnome-stock-mail-new.svg stock_mail-compose.svg 
ln -sf go-top.svg gtk-goto-top.svg 
ln -sf go-jump.svg gtk-jump-to-ltr.svg 
ln -sf go-up.svg gtk-go-up.svg 
ln -sf go-bottom.svg gtk-goto-bottom.svg 
ln -sf go-top.svg top.svg 
ln -sf go-up.svg up.svg 
ln -sf gtk-about.svg help-about.svg 
ln -sf gtk-about.svg stock-about.svg 
ln -sf gtk-bold.svg format-text-bold.svg
ln -sf gtk-cancel.svg gtk-remove.svg 
ln -sf gtk-cancel.svg list-remove
ln -sf gtk-cancel.svg list-remove.svg 
ln -sf gtk-cancel.svg process-stop.svg 
ln -sf gtk-fullscreen.svg view-fullscreen.svg
ln -sf gtk-indent-ltr.svg format-indent-more.svg
ln -sf gtk-indent-ltr.svg gnome-stock-text-indent.svg
ln -sf gtk-indent-ltr.svg gtk-unindent-rtl.svg
ln -sf gtk-indent-ltr.svg stock_text_indent.svg
ln -sf gtk-indent-rtl.svg format-indent-less.svg
ln -sf gtk-indent-rtl.svg gnome-stock-text-unindent.svg
ln -sf gtk-indent-rtl.svg gtk-unindent-ltr.svg
ln -sf gtk-indent-rtl.svg gtk-unindent.svg
ln -sf gtk-indent-rtl.svg stock_text_unindent.svg
ln -sf gtk-italic.svg format-text-italic.svg
ln -sf gtk-italic.svg stock_text_italic.svg
ln -sf gtk-italic.svg text_italic.svg
ln -sf gtk-justify-center.svg centrejust.svg
ln -sf gtk-justify-center.svg format-justify-center.svg
ln -sf gtk-justify-center.svg stock_text_center.svg
ln -sf gtk-justify-fill.svg format-justify-fill.svg
ln -sf gtk-justify-fill.svg stock_text_justify.svg
ln -sf gtk-justify-right.svg format-justify-right.svg
ln -sf gtk-justify-right.svg stock_text_right.svg
ln -sf gtk-leave-fullscreen.svg view-restore.svg
ln -sf gtk-media-play-ltr.svg media-playback-start.svg
ln -sf gtk-media-play-ltr.svg gtk_stock_media_play.svg
ln -sf gtk-media-play-ltr.svg gtk-media-play.svg
ln -sf gtk-media-pause.svg media-playback-pause.svg
ln -sf gtk-media-pause.svg gtk_stock_media_pause.svg
ln -sf gtk-media-stop.svg media-playback-stop.svg
ln -sf gtk-media-record.svg media-record.svg
ln -sf gtk-media-forward.rtl.svg media-seek-backward.svg
ln -sf gtk-media-forward.rtl.svg gtk-media-rewind.svg
ln -sf gtk-media-forward.rtl.svg gtk-media-rewind-ltr.svg
ln -sf gtk-media-forward.rtl.svg gtk-media-forward-rtl.svg
ln -sf gtk-media-forward.rtl.svg gtk_stock_media_rewind.svg
ln -sf gtk-media-forward.rtl.svg player_rew.svg
ln -sf gtk-media-forward.rtl.svg stock_media-rew.svg
ln -sf gtk-media-forward.ltr.svg media-seek-forward.svg
ln -sf gtk-media-forward.ltr.svg gtk-media-forward.svg
ln -sf gtk-media-forward.ltr.svg gtk-media-rewind-rtl.svg
ln -sf gtk-media-forward.ltr.svg gtk-media-forward-ltr.svg
ln -sf gtk-media-forward.ltr.svg gtk_stock_media_forward.svg
ln -sf gtk-media-forward.ltr.svg player_fwd.svg
ln -sf gtk-media-forward.ltr.svg stock_media-fwd.svg
ln -sf gtk-media-next-ltr.svg gtk-media-previus-rtl.svg
ln -sf gtk-media-next-ltr.svg player_end.svg
ln -sf gtk-media-next-ltr.svg stock_media-next.svg
ln -sf gtk-media-next-ltr.svg media-skip-forward.svg
ln -sf gtk-media-next-rtl.svg gtk-media-previous-ltr.svg
ln -sf gtk-media-next-rtl.svg media-skip-backward.svg
ln -sf gtk-media-next-rtl.svg player_start.svg
ln -sf gtk-media-next-rtl.svg stock_media-prev.svg
ln -sf gtk_new-window.svg window-new.svg 
ln -sf gtk_new-window.svg window_new.svg 
ln -sf gtk_new-window.svg stock_new-window.svg 
ln -sf gtk-print-error.svg document-print-error.svg
ln -sf gtk-print-error.svg print-error.svg
ln -sf gtk-print-error.svg printer-error.svg
ln -sf gtk-print-error.svg gtk_stock_print_error.svg
ln -sf gtk-print-error.svg gtk_stock_print-error.svg
ln -sf gtk-print-error.svg stock_print-error.svg
ln -sf gtk-print-error.svg stock_print_error.svg
ln -sf gtk-print-paused.svg document-print-paused.svg
ln -sf gtk-print-paused.svg print-paused.svg
ln -sf gtk-print-paused.svg printer-paused.svg
ln -sf gtk-print-paused.svg gtk_stock_print_paused.svg
ln -sf gtk-print-paused.svg gtk_stock_print-paused.svg
ln -sf gtk-print-paused.svg stock_print-paused.svg
ln -sf gtk-print-paused.svg stock_print_paused.svg
ln -sf gtk-print-report.svg document-print-report.svg
ln -sf gtk-print-report.svg print-report.svg
ln -sf gtk-print-report.svg printer-report.svg
ln -sf gtk-print-report.svg gtk_stock_print_report.svg
ln -sf gtk-print-report.svg gtk_stock_print-report.svg
ln -sf gtk-print-report.svg stock_print-report.svg
ln -sf gtk-print-report.svg stock_print_report.svg
ln -sf gtk-print-warning.svg document-print-warning.svg
ln -sf gtk-print-warning.svg print-warning.svg
ln -sf gtk-print-warning.svg printer-warning.svg
ln -sf gtk-print-warning.svg gtk_stock_print_warning.svg
ln -sf gtk-print-warning.svg gtk_stock_print-warning.svg
ln -sf gtk-print-warning.svg stock_print-warning.svg
ln -sf gtk-print-warning.svg stock_print_warning.svg
ln -sf gtk-refresh.svg view-refresh.svg 
ln -sf gtk-spell-check.svg tools-check-spelling.svg 
ln -sf gtk-spell-check.svg stock_spellcheck.svg 
ln -sf gtk-spell-check.svg stock-spellcheck.svg 
ln -sf gtk-strikethrough.svg format-text-strikethrough.svg
ln -sf gtk-strikethrough.svg stock_text-strikethrough.svg
ln -sf gtk-underline.svg format-text-underline.svg
ln -sf gtk-zoom-in.svg zoom-in.svg 
ln -sf gtk-zoom-100.svg zoom-original.svg 
ln -sf gtk-zoom-out.svg zoom-out.svg
ln -sf help.svg help-contents.svg
ln -sf last.svg finish.svg
ln -sf last.svg go-last.svg
ln -sf last.svg gtk-goto-first-rtl.svg
ln -sf last.svg gtk-goto-last-ltr.svg
ln -sf last.svg gtk-goto-last.svg
ln -sf last.svg gtk_stock_goto_last.svg
ln -sf last.svg stock_last.svg
ln -sf system-shutdown.svg gnome-logout.svg
ln -sf system-shutdown.svg gnome-session-logout.svg
ln -sf view-sort-ascending.svg gtk-sort-ascending.svg
ln -sf view-sort-descending.svg gtk-sort-descending.svg
ln -sf zoom-best-fit.svg gtk-zoom-fit.svg 
ln -sf zoom-best-fit.svg zoom-fit-best.svg 
ln -sf zoom-best-fit.svg zoom-fit.svg 


cd ../

# Enlaces para la carpeta Apps
cd apps/
ln -sf ../categories/huayra-menu-other.svg preferences-other.svg
ln -sf ../categories/applications-accesories.svg gnome-util.svg
ln -sf ../categories/applications-system.svg gnome-system.svg
ln -sf gtk-about.svg help-about.svg
ln -sf gtk-about.svg stock-about.svg
ln -sf utilities-terminal-symbolic.svg gnome-terminal.svg
ln -sf utilities-terminal-symbolic.svg openterm.svg
ln -sf utilities-terminal-symbolic.svg terminal.svg
ln -sf preferences-desktop.svg kcontrol.svg
ln -sf preferences-desktop.svg preferences-desktop-personal-2.svg
ln -sf preferences-desktop.svg redhat-preferences.svg
ln -sf preferences-desktop.svg xfce4-settings.svg
ln -sf preferences-desktop-display-symbolic.svg preferences-desktop-display.svg
ln -sf preferences-desktop-display-symbolic.svg msd-xrandr.svg
ln -sf preferences-desktop-display-symbolic.svg mate-preferences-desktop-display.svg
ln -sf preferences-system.svg preferences-desktop-personal.svg
ln -sf preferences-system.svg gnome-tweak-tool.svg

cd ../

# Enlaces para la carpeta Categories
cd categories/
ln -sf applications-games.svg applications-arcade.svg
ln -sf applications-games.svg redhat-games.svg
ln -sf applications-games.svg xfce-games.svg
ln -sf applications-graphics.svg applications-drawing.svg
ln -sf applications-graphics.svg redhat-graphics.svg
ln -sf applications-graphics.svg xfce-graphics.svg
ln -sf applications-internet.svg stock_internet.svg
ln -sf applications-internet.svg redhat-internet.svg
ln -sf applications-internet.svg xfce-internet.svg
ln -sf applications-multimedia.svg multimedia_section.svg
ln -sf applications-multimedia.svg redhat-sound_video.svg
ln -sf applications-multimedia.svg xfce-multimedia.svg
ln -sf applications-office.svg redhat-office.svg
ln -sf applications-office.svg xfce-office.svg
ln -sf applications-utilities.svg redhat-accesories.svg
ln -sf applications-utilities.svg xfce-utils.svg
ln -sf preferences-system.svg applications-system.svg 
ln -sf preferences-system.svg gnome-tweak-tool.svg 
ln -sf preferences-system.svg redhat-system_tools.svg 
ln -sf preferences-system.svg xfce-system.svg 
ln -sf huayra-menu-education.svg biblioteca-huayra.svg
cd ../

# Enlaces para la carpeta Devices
cd devices/
ln -sf drive-harddisk.svg drive-harddisk-system.svg 
ln -sf drive-cdrom.svg drive-optical.svg 
ln -sf drive-cdrom.svg dvd-unmount.svg
ln -sf drive-cdrom.svg gnome-dev-cdrom-audio.svg
ln -sf drive-cdrom.svg gnome-dev-disc-cdr.svg
ln -sf drive-cdrom.svg gnome-dev-disc-cdrw.svg
ln -sf drive-cdrom.svg gtk-cdrom.svg
ln -sf drive-cdrom.svg media-cdrom.svg
ln -sf drive-cdrom.svg media-optical.svg
ln -sf drive-dvdrom.svg gnome-dev-disc-dvdr.svg
ln -sf drive-dvdrom.svg gnome-dev-disc-dvdram.svg
ln -sf drive-dvdrom.svg gnome-dev-disc-dvdrom.svg
ln -sf drive-dvdrom.svg gnome-dev-disc-dvdr-plus.svg
ln -sf drive-dvdrom.svg gnome-dev-disc-dvdrw.svg
ln -sf drive-removable-media.svg drive-usb.svg 
ln -sf media-floppy.svg 3floppy_unmount.svg
ln -sf media-floppy.svg gnome-dev-floppy.svg
ln -sf media-floppy.svg gtk-floppy.svg
ln -sf media-floppy.svg system-floppy.svg
cd ../

# Enlaces para la carpeta Emblems

# Enlaces para la carpeta Mimetypes
cd mimetypes/

ln -sf ascii.svg mime_ascii.svg
ln -sf empty.svg text-x-preview.svg 
ln -sf exec.svg application-x-executable.svg
ln -sf exec.svg binary.svg
ln -sf exec.svg gnome-mime-application-x-ms-dos-executable.svg
ln -sf exec.svg gnome-fs-executable.svg
ln -sf font.svg font_bitmap.svg
ln -sf font.svg font_truetype.svg
ln -sf font.svg font_type1.svg
ln -sf font.svg font-x-generic.svg
ln -sf font.svg gnome-mime-application-x-font-afm.svg
ln -sf font.svg gnome-mime-application-x-font-bdf.svg
ln -sf font.svg gnome-mime-application-x-font-linux-psf.svg
ln -sf font.svg gnome-mime-application-x-font-pcf.svg
ln -sf font.svg gnome-mime-application-x-font-sunos-news.svg
ln -sf font.svg gnome-mime-application-x-font-ttf.svg
ln -sf font.svg gnome-mime-x-font-afm.svg
ln -sf image.svg image-x-generic.svg
ln -sf image.svg gnome-mime-image.svg
ln -sf package-x-generic.svg package-editors.svg
ln -sf package-x-generic.svg package.svg
ln -sf package-x-generic.svg rpm.svg
ln -sf package-x-generic.svg gnome-package.svg
ln -sf package-x-generic.svg gnome-mime-application-x-stuffit.svg
ln -sf package-x-generic.svg gnome-mime-application-x-tar.svg
ln -sf package-x-generic.svg gnome-mime-application-x-tarz.svg
ln -sf package-x-generic.svg gnome-mime-application-x-zip.svg
ln -sf package-x-generic.svg gnome-mime-application-x-rar.svg
ln -sf package-x-generic.svg gnome-mime-application-x-rpm.svg
ln -sf package-x-generic.svg gnome-mime-application-x-jar.svg
ln -sf package-x-generic.svg gnome-mime-application-x-lha.svg
ln -sf package-x-generic.svg gnome-mime-application-x-lhz.svg
ln -sf package-x-generic.svg gnome-mime-application-x-lzma.svg
ln -sf package-x-generic.svg gnome-mime-application-x-lzma-compressed-tar.svg
ln -sf package-x-generic.svg gnome-mime-application-x-gzip.svg
ln -sf package-x-generic.svg gnome-mime-application-x-archive.svg
ln -sf package-x-generic.svg gnome-mime-application-x-arj.svg
ln -sf package-x-generic.svg gnome-mime-application-x-bzip.svg
ln -sf package-x-generic.svg gnome-mime-application-x-compress.svg
ln -sf package-x-generic.svg gnome-mime-application-x-compressed-tar.svg
ln -sf package-x-generic.svg gnome-mime-application-x-cpcio.svg
ln -sf package-x-generic.svg gnome-mime-application-x-cpcio-compressed.svg
ln -sf package-x-generic.svg gnome-mime-application-x-deb.svg
ln -sf package-x-generic.svg gnome-mime-application-x-7z-compressed.svg
ln -sf package-x-generic.svg deb.svg
ln -sf package-x-generic.svg folder_tar.svg
ln -sf text-x-generic.svg txt.svg
ln -sf text-x-generic.svg txt2.svg
ln -sf text-x-generic.svg gnome-mime-text.svg
ln -sf text-x-generic-template.svg package_editors.svg
ln -sf text-x-generic-template.svg template_source.svg
ln -sf text-x-script.svg shellscript.svg
ln -sf text-x-script.svg gnome-mime-text-x-csh.svg
ln -sf text-x-script.svg gnome-mime-text-x-python.svg
ln -sf text-x-script.svg gnome-mime-text-x-sh.svg
ln -sf text-x-script.svg gnome-mime-text-x-zsh.svg
ln -sf text-x-script.svg stock_script.svg
ln -sf text-x-script.svg gnome-mime-application-x-shellscript.svg
ln -sf text-x-script.svg gnome-mime-application-x-perl.svg
ln -sf text-x-script.svg gnome-mime-application-x-python-bytecode.svg
ln -sf text-html.svg gnome-mime-text-html.svg
ln -sf text-html.svg www.svg
ln -sf text-html.svg gnome-mime-text-vnd.wap.wml.svg
ln -sf x-office-document.svg package-wordprocessing.svg
ln -sf x-office-document.svg wordprocessing.svg
ln -sf x-office-document.svg gnome-mime-application-x-tex.svg
ln -sf x-office-spreadsheet.svg spreadsheet.svg

cd ../


# Enlaces para la carpeta Places
cd places/
ln -sf desktop.svg other-desktop.svg 
ln -sf desktop.svg user-desktop.svg 
ln -sf folder.svg gnome-fs-directory
ln -sf folder.svg gtk-directory.svg 
ln -sf folder.svg inode-directory.svg
ln -sf folder.svg folder-documents.svg 
ln -sf folder.svg stock_folder.svg
ln -sf folder.svg stock_folder.svg 
ln -sf folder-publicshare.svg folder-remote.svg 
ln -sf folder-publicshare.svg gnome-fs-ftp.svg
ln -sf folder-publicshare.svg gnome-fs-nfs.svg
ln -sf folder-publicshare.svg gnome-fs-share.svg 
ln -sf folder-publicshare.svg gnome-fs-smb.svg
ln -sf folder-publicshare.svg gnome-fs-ssh.svg
ln -sf folder-publicshare.svg gnome-mime-x-directory-smb-share.svg
ln -sf folder-publicshare.svg network.svg
ln -sf folder-movies.svg folder-videos.svg 
ln -sf go-home.svg user-home.svg 
ln -sf network-server.svg gnome-fs-network.svg
ln -sf network-server.svg gnome-mime-x-directory-smb-workgroup.svg
ln -sf network-server.svg gtk-network.svg
ln -sf network-server.svg gtk_stock_network.svg
ln -sf network-server.svg network_local.svg
ln -sf start-here.svg start-here-symbolic.svg 
ln -sf start-here.svg distributor-logo.svg
ln -sf start-here.svg gnome-main-menu.svg
ln -sf start-here.svg novell-button.svg
ln -sf user-trash.svg trashcan_emtpy.svg
ln -sf user-trash.svg xfce-trash_empty.svg
ln -sf user-trash.svg gnome-stock-trash.svg
ln -sf user-trash.svg gnome-fs-trash-empty.svg
cd ../

# Enlaces para la carpeta Status
cd status/
ln -sf bluetooth-active-symbolic.svg blueman.svg
ln -sf bluetooth-active-symbolic.svg blueman-active.svg
ln -sf bluetooth-active-symbolic.svg blueman-tray.svg
ln -sf bluetooth-disabled-symbolic.svg blueman-disabled.svg
ln -sf image-missing.svg gtk-missing-image.svg 
ln -sf dialog-password.svg gtk-dialog-authentication.svg
ln -sf dialog-error.svg error.svg
ln -sf dialog-error.svg messagebox_critical.svg
ln -sf dialog-error.svg stock_dialog-error.svg
ln -sf dialog-error.svg gtk-dialog-error.svg
ln -sf dialog-information.svg gtk-dialog-info.svg
ln -sf dialog-information.svg info.svg
ln -sf dialog-information.svg messagebox_info.svg
ln -sf dialog-information.svg stock_dialog-info.svg
ln -sf dialog-question.svg gtk-dialog-question.svg
ln -sf dialog-question.svg stock_dialog-question.svg
ln -sf dialog-warning.svg gtk-dialog-warning.svg
ln -sf dialog-warning.svg messagebox_warning.svg
ln -sf dialog-warning.svg stock_dialog-warning.svg
ln -sf network-idle.svg connect_established.svg
ln -sf network-idle.svg gnome-netstatus-idle.svg
ln -sf network-transmit-receive.svg connect_creating.svg
ln -sf network-transmit-receive.svg gnome-netstatus-txrx.svg
ln -sf network-offline.svg connect_no.svg
ln -sf network-offline.svg gnome-netstatus-disconn.svg
ln -sf network-offline.svg nm-no-connection.svg
ln -sf network-error.svg gnome-netstatus-error.svg
ln -sf network-receive.svg gnome-netstatus-rx.svg
ln -sf network-transmit.svg gnome-netstatus-tx.svg
cd ../

echo "Listo!"
