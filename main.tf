provider "aws" {
          region = "us-east-2"
          access_key = "AKIAXF2VNWQJ5FQWSE7V"
          secret_key = "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"


}


resource "aws_instance" "test"  {
         ami = "ami-02238ac43d6385ab3"
         instance_type = "t2.micro"
         key_name = "ohio-key"
         tags = {
              Name = "webserver"
              env = "production"
}
}


resource "aws_eip" "test-eip"  {
          instance = "${aws_instance.test.id}"
           tags = {
              Name = "test-eip"
              
}


}
