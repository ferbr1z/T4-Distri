package beans;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import abstracts.AbstractBean;
import interfaces.beans.IUser;

public class User extends AbstractBean implements IUser{
    private static final long serialVersionUID = 1L;

    @JsonProperty("name")
    private String name;
    @JsonProperty("username")
    private String username;
    @JsonProperty("email")
    private String email;
    private Address address;
    @JsonProperty("phone")
    private String phone;
    @JsonProperty("website")
    private String website;

    private Company company;


    @Override
    public String getName() {
        return name;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public String getEmail() {
        return email;
    }

    @Override
    public String getPhone() {
        return phone;
    }

    @Override
    public String getWebsite() {
        return website;
    }

    @Override
    public Address getAddress() {
        return address;
    }

    @Override
    public Company getCompany() {
        return company;
    }

    public static class Address implements Serializable {
        @JsonProperty("street")
        private String street;
        @JsonProperty("suite")
        private String suite;
        @JsonProperty("city")
        private String city;
        @JsonProperty("zipcode")
        private String zipcode;
        private Geo geo;

        // Getters y setters
    }

    public static class Geo implements Serializable {
        @JsonProperty("lat")
        private String lat;
        @JsonProperty("lng")
        private String lng;

        // Getters y setters
    }

    public static class Company implements Serializable {
        @JsonProperty("name")
        private String name;
        @JsonProperty("catchPhrase")
        private String catchPhrase;
        @JsonProperty("bs")
        private String bs;

        // Getters y setters
    }
}
