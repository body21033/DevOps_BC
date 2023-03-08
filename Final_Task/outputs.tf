output "private_network_out" {
  value = "${module.vpc.private_network}"
}

output "sub_network_out" {
  value = "${module.vpc.sub_network}"
}

output "external_ip_out"{
  value = "${module.server.external_ip}"
}
