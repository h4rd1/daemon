![{C427A476-76A2-442B-B3EC-D8945679ADEC}](https://github.com/user-attachments/assets/52e150b5-8f8a-49ff-8add-57983344e492)

yum install nfs-utils

vim /etc/systemd/system/mnt-nfs.mount

systemctl daemon-reload

systemctl start mnt-nfs.mount

systemctl enable mnt-nfs.mount

systemctl status mnt-nfs.mount

journalctl -xe
