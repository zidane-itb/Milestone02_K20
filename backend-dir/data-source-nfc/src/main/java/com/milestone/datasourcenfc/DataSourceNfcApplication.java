package com.milestone.datasourcenfc;

import com.milestone.datasourcenfc.model.Person;
import com.milestone.datasourcenfc.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.ArrayList;
import java.util.List;

@SpringBootApplication
public class DataSourceNfcApplication {

    public static void main(String[] args) {
        SpringApplication.run(DataSourceNfcApplication.class, args);
    }

    @Autowired
    public void loadData(PersonRepository repository) {
        List<Person> list = new ArrayList<>();

        Person person = new Person("2002001", "Zidane F.", "Laki-laki",
                            "Jalan Ganesha", "Belum Menikah");
        Person person1 = new Person("2002002", "Luthfi", "Laki-laki",
                "Jalan Ganesha", "Belum Menikah");
        Person person2 = new Person("2002003", "Eunice", "Perempuan",
                "Jalan Ganesha", "Belum Menikah");
        Person person3 = new Person("2002004", "Ardhan Nur Urfan", "Laki-laki",
                "Jalan Ganesha", "Belum Menikah");
        Person person4 = new Person("2002005", "Angger Ilham", "Laki-laki",
                "Jalan Ganesha", "Belum Menikah");
        Person person5 = new Person("2002006", "Yasmin Arum Sari", "Perempuan",
                "Jalan Ganesha", "Belum Menikah");
        Person person6 = new Person("2002007", "Ghazi Akmal F.", "Laki-laki",
                "Jalan Ganesha", "Belum Menikah");
        Person person7 = new Person("2002008", "Rivai", "Laki-laki",
                "Jalan Ganesha", "Belum Menikah");

        list.add(person);
        list.add(person1);
        list.add(person2);
        list.add(person3);
        list.add(person4);
        list.add(person5);
        list.add(person6);
        list.add(person7);

        repository.saveAll(list);
    }


}
