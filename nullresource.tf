resource "null_resource" "install-webservice" {
 
  connection {
    type = "ssh"
    host = data.azurerm_public_ip.ip_publico.ip_address
    user = var.user
    password = var.pwd_user
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y apache2",
    ]
  }

  depends_on = [
      azurerm_virtual_machine.vmmaquina,
  ]
}