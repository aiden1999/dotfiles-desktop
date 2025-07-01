# dotfiles-desktop

## Dual-booting with Windows (different drive)

1. Install `os-prober`
2. Edit `/etc/default/grub` to add/uncomment

```
GRUB_DISABLE_OS_PROBER=false
```

3. Run `sudo grub-mkconfig` to check if Windows Boot Manager is listed.
4. Generate new config and write to file with `grub-mkconfig -o /boot/grub/grub.cfg`

