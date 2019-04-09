output "Server IPs v4" {
  value = "${packet_device.hosts.*.access_public_ipv4}"
}

output "Server SSH Access" {
  value = "ssh root@${packet_device.hosts.*.access_public_ipv4} -i mykey"
}

output "Server IPs v6" {
  value = "${packet_device.hosts.*.access_public_ipv6}"
}

output "Anycast IPv6 Address" {
  value = "${local.anycast_addr}"
}

output "Anycast IPv6 Network" {
  value = "${local.anycast_network}"
}

output "IPv6 Anycast Curl Command" {
  value = "curl http://[${local.anycast_addr}]"
}
