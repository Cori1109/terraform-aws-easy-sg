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
}
