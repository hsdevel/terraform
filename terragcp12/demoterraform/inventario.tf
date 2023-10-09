resource "local_file" "productos"{
    count = 3
    content = "LISTA DE PRODUCTOS PARA EL SIGUIENTE MES"
    filename = var.docname
    #filename = "productos-${random_string.randomfiles[count.index].id}.txt"
}
resource "random_string" "randomfiles" {
    count = 3
    length = 5
    upper = true
    lower = false
    numeric = true
    special = true
    override_special = "/$"
  
}
variable "docname"{
    description = "NOMBRE DE ARCHIVOS DE LOS PRODUCTOS"
    type = string
    default = "productos.txt"
}