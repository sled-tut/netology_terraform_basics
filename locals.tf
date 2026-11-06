locals {
    web_name = "${var.vpc_name}-${var.vm_web_family}"
    db_name  = "${var.vpc_name_db}-${var.vm_db_family}"
}

