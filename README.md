# pi-camera-display

A camera display program for Raspberry Pi OS lite.

## Requirements

```sh
sudo apt install luvcview
```

## Autostart

Add the following line before exit 0 of /etc/rc.local

```sh
[absolute path of this dir]/camera-display.sh
```

## References

- [ラズパイでUSBカメラを使うときに知っておきたいこと](https://www.hiro345.net/blogs/hiro345/archives/18787.html)
