/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author edwin
 */
public class DetalleCompra {
    private int id_compra,id_cliente,id_producto,tipo_prod,cantidad_compra,item;
    private float subtotal_compra,total_compra;
    private String fecha_compra;
    
    
    public int getId_compra() {
        return id_compra;
    }

    public void setId_compra(int id_compra) {
        this.id_compra = id_compra;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getTipo_prod() {
        return tipo_prod;
    }

    public void setTipo_prod(int tipo_prod) {
        this.tipo_prod = tipo_prod;
    }

    public int getCantidad_compra() {
        return cantidad_compra;
    }

    public void setCantidad_compra(int cantidad_compra) {
        this.cantidad_compra = cantidad_compra;
    }

    public float getSubtotal_compra() {
        return subtotal_compra;
    }

    public void setSubtotal_compra(float subtotal_compra) {
        this.subtotal_compra = subtotal_compra;
    }

    public float getTotal_compra() {
        return total_compra;
    }

    public void setTotal_compra(float total_compra) {
        this.total_compra = total_compra;
    }

    public String getFecha_compra() {
        return fecha_compra;
    }

    public void setFecha_compra(String fecha_compra) {
        this.fecha_compra = fecha_compra;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }
    
    
}
