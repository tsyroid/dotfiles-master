## Fix Snapper

[From](https://youtube.com/)

1. sudo umount /.snapshots
2. sudo rm -r /.snapshots
3. sudo snapper -c root create-config /
4. sudo btrfs subvolume delete /.snapshots
5. sudo mkdir /.snapshots
6. sudo mount -a  // no error; all good
7. sudo chmod 750 /.snapshots
8. sudo nvim (or vim) /etc/snapper/configs/root #set above
   edit per Wiki
9. sudo systemctlenable --now snapper-timeline.timer snapper-cleanup.timer
