output "vm_web" {
    value = [
        yandex_compute_instance.platform.name,
        yandex_compute_instance.platform.network_interface.0.nat_ip_address,
        yandex_compute_instance.platform.fqdn
    ]
}

output "vm_db" {
    value = [
        yandex_compute_instance.platform_2.name,
        yandex_compute_instance.platform_2.network_interface.0.nat_ip_address,
        yandex_compute_instance.platform_2.fqdn
    ]
}
