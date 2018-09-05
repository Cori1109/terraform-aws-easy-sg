locals {
  path_root_list = "${split("/", path.root)}"
  path_root_len  = "${length(local.path_root_list)}"
  parent_dir     = "${element(local.path_root_list, local.path_root_len - 1)}"
}

locals {
  // https://tools.ietf.org/html/rfc5737
  icanhazip  = "${chomp(data.http.0.body)}"
  current_ip = "${local.icanhazip != "" ? local.icanhazip : "203.0.113.0"}"

  name = "${var.name != "" ? var.name : local.parent_dir}"

  length_world_ports = "${length(compact(var.world_ports))}"

  ingress_world_port_0_count = "${local.length_world_ports > 0 ? 1 : 0}"
  ingress_world_port_1_count = "${local.length_world_ports > 1 ? 1 : 0}"
  ingress_world_port_2_count = "${local.length_world_ports > 2 ? 1 : 0}"
  ingress_world_port_3_count = "${local.length_world_ports > 3 ? 1 : 0}"
  ingress_world_port_4_count = "${local.length_world_ports > 4 ? 1 : 0}"
  ingress_world_port_5_count = "${local.length_world_ports > 5 ? 1 : 0}"
  ingress_world_port_6_count = "${local.length_world_ports > 6 ? 1 : 0}"
  ingress_world_port_7_count = "${local.length_world_ports > 7 ? 1 : 0}"
  ingress_world_port_8_count = "${local.length_world_ports > 8 ? 1 : 0}"
  ingress_world_port_9_count = "${local.length_world_ports > 9 ? 1 : 0}"

  ingress_world_port_0 = "${local.ingress_world_port_0_count == 1 ? element(var.world_ports, 0) : "25000" }"
  ingress_world_port_1 = "${local.ingress_world_port_1_count == 1 ? element(var.world_ports, 1) : "25000" }"
  ingress_world_port_2 = "${local.ingress_world_port_2_count == 1 ? element(var.world_ports, 2) : "25000" }"
  ingress_world_port_3 = "${local.ingress_world_port_3_count == 1 ? element(var.world_ports, 3) : "25000" }"
  ingress_world_port_4 = "${local.ingress_world_port_4_count == 1 ? element(var.world_ports, 4) : "25000" }"
  ingress_world_port_5 = "${local.ingress_world_port_5_count == 1 ? element(var.world_ports, 5) : "25000" }"
  ingress_world_port_6 = "${local.ingress_world_port_6_count == 1 ? element(var.world_ports, 6) : "25000" }"
  ingress_world_port_7 = "${local.ingress_world_port_7_count == 1 ? element(var.world_ports, 7) : "25000" }"
  ingress_world_port_8 = "${local.ingress_world_port_8_count == 1 ? element(var.world_ports, 8) : "25000" }"
  ingress_world_port_9 = "${local.ingress_world_port_9_count == 1 ? element(var.world_ports, 9) : "25000" }"
}
