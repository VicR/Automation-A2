resource "null_resource" "linux_provisioner" {
  count      = var.nb_count
  depends_on = [azurerm_linux_virtual_machine.linux_vm]

  provisioner "local-exec" {
    command = "sleep 10; ansible-playbook groupX-playbook.yaml"
    connection {
      type        = "ssh"
      user        = var.admin_user_name
      private_key = file(var.private_key)
      host        = element(azurerm_public_ip.linux_public_ip[*].fqdn, count.index + 1)
    }
  }
}
