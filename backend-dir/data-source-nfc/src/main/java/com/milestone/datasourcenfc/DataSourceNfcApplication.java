package com.milestone.datasourcenfc;

import com.milestone.datasourcenfc.model.Person;
import com.milestone.datasourcenfc.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DataSourceNfcApplication {

    public static void main(String[] args) {
        SpringApplication.run(DataSourceNfcApplication.class, args);
    }


}
