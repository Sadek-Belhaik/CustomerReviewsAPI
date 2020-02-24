package com.udacity.course3.reviews;

import com.udacity.course3.reviews.entity.Product;
import com.udacity.course3.reviews.repository.ProductRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.assertj.core.api.Assertions.assertThat;

@RunWith(SpringRunner.class)
@DataJpaTest
public class ProductRepositoryTests {
    @Autowired
    ProductRepository productRepository;

    @Test
    public void findAllProducts() {
        Iterable<Product> products = productRepository.findAll();
        assertThat(products).isNotEmpty();
    }

    @Test
    public void addProduct() {
        Product newProduct = new Product(10000, "Test product", "Product description");
        productRepository.save(newProduct);
        Iterable<Product> products = productRepository.findAll();
        assertThat(products).contains(newProduct);
    }
}
