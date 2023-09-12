resource "local_file" "pet" {
  filename = "/root/pets.txt"
  content  = "we love pets!"
}

provisioner "local-exec" {
  command = "sudo chown root:root /root/pets.txt && sudo chmod 644 /root/pets.txt"
}
