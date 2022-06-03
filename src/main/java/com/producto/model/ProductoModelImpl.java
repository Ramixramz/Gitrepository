/*
    Autor: Ramiro Ramirez Ramirez
    Fecha de creación:20 de Abril 2022
    Fecha de Actualización: 11 de Mayo de 2022
    Descripción:
 */
package com.producto.model;

import com.producto.entity.Producto;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ProductoModelImpl implements IProductoModel {

    private SessionFactory sf;
    private Session s;

    @Override
    public List<Producto> obtenerRegistros() {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            List<Producto> lista = s.createCriteria(Producto.class).list();
            s.close();

            sf.close();
            return lista;
        } catch (HibernateException e) {
            System.out.println("Error al recuperar los registros:" + e.getMessage());
        }
        return null;
    }

    @Override
    public void actualizarRegistro(Producto producto) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.update(producto);
            s.getTransaction().commit();
            s.close();
            sf.close();

        } catch (Exception e) {
            System.out.println("Error al actualizar el registro:" + e.getMessage());
        }
    }

    @Override
    public void eliminarRegistro(Producto producto) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.delete(producto);
            s.getTransaction().commit();
            s.close();
            sf.close();
        } catch (Exception e) {
            System.out.println("Error al eliminar el registro:" + e.getMessage());
        }
    }

    @Override
    public void crearRegistro(Producto producto) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.save(producto);
            s.getTransaction().commit();
            s.close();
            sf.close();

        } catch (HibernateException e) {
            System.out.println("Error al crear el registro:" + e.getMessage());
        }
    }

    @Override
    public Producto obtenerRegistro(int idProducto) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            Producto producto = (Producto) s.get(Producto.class, idProducto);
            s.close();
            sf.close();
            return producto;
        } catch (Exception e) {
            System.out.println("Error al recuperar el registro:" + e.getMessage());
        }
        return null;
    }

    public static void main(String[] args) {
        IProductoModel c = new ProductoModelImpl();
        Producto p = new Producto();
        p.setNombre("Producto_Prueba");
        p.setDescripcion("Decripcion_prueba");
        p.setPreciocompra(0.0);
        p.setPrecioventa(0.0);
        p.setIdproducto(1);
        c.crearRegistro(p);
    }
}
