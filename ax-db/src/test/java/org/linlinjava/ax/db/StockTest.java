package org.linlinjava.ax.db;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.linlinjava.ax.db.dao.GoodsProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class StockTest {
    @Autowired
    private GoodsProductMapper goodsProductMapper;

    @Test
    public void testReduceStock() {
        Integer id = 1;
        Short num = 10;
        goodsProductMapper.reduceStock(id, num);
    }

    @Test
    public void testAddStock() {
        Integer id = 1;
        Short num = 10;
        goodsProductMapper.addStock(id, num);
    }
}
