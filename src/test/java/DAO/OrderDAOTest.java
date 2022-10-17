package DAO;

import OrderTEntity.OrderTEntity;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class OrderDAOTest {

    @Test
    void insertOrder() {
        OrderTEntity car = new OrderTEntity();
        car.setName("ЗИЛ");
        car.setEmail("133");
        car.setPhone("203399494");
        car.setAddress("Igevsk");
    }

    @Test
    void getOrderById() {
        OrderTEntity result = new OrderDAO().getOrderById(13L);
        System.out.println(result);
    }

    @Test
    void getAllOrders() {
        List<OrderTEntity> orders = new OrderDAO().getAllOrders();
        for (OrderTEntity order : orders) {
            System.out.println(order);
        }
    }

    @Test
    void updateOrder() {
        OrderTEntity result = new OrderDAO().getOrderById(13L);
        result.setName("Oleg");
        System.out.println(result);
    }

    @Test
    void deleteOrderById() {
        new OrderDAO().deleteOrderById(21L);
    }
}