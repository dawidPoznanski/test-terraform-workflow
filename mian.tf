provider "local" {
}

resource "local_file" "welcome_script" {
  filename = "welcome.sh"
  content = <<-EOF
    #!/bin/bash
    echo "Hello world"
  EOF
}

output "welcome_message" {
  value = local_file.welcome_script.content
}
