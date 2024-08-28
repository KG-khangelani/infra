provider "local" {
	# No cofiguration needed for the local provider
}

resource "local_file" "kali_omen" {
	filename = "/tmp/kali_omen.txt"
	content = <<-EOT
	Physical Machine: Kali Omen
	IP: 192.168.101.242
	OS: Kali Linux
	Memory: 8GB
	storage: 1TB HDD
	EOT
}

# Outputs --------

output "kali_omen" {
	value = local_file.kali_omen.content
	description = "Information about the Omen gaming laptop with red lit keys"
}

output "kali_omen_ip" {
	value = "192.168.101.242"
	description = "IP address of the omen gaming laptiop"
}
