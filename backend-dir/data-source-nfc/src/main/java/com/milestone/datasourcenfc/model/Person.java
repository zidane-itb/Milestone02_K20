package com.milestone.datasourcenfc.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@AllArgsConstructor @NoArgsConstructor
public class Person {

    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private Long personId;
    @Column(unique = true)
    private String nik;
    private String fullName;
    private String gender;
    private String address;
    private String statusPernikahan;

    public Person(String nik, String fullName, String gender, String address, String statusPernikahan) {
        this.nik = nik;
        this.fullName = fullName;
        this.gender = gender;
        this.address = address;
        this.statusPernikahan = statusPernikahan;
    }
}
