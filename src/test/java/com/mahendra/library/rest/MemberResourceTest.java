package com.mahendra.library.rest;
// src/test/java/com/mahendra/library/rest/MemberResourceTest.java
import com.mahendra.library.dao.MemberDAO;
import com.mahendra.library.exceptions.MemberNotFoundException;
import com.mahendra.library.models.Member;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;

import java.util.*;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class MemberResourceTest {

    @Mock
    private MemberDAO dao;

    @InjectMocks
    private MemberResource resource;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void findAll_shouldReturnMembers_whenMembersExist() {
        Member m1 = new Member();
        Member m2 = new Member();
        when(dao.findAll()).thenReturn(Arrays.asList(m1, m2));

        ResponseEntity<List<Member>> response = resource.findAll();

        assertEquals(HttpStatus.FOUND, response.getStatusCode());
        assertEquals(2, response.getBody().size());
    }

    @Test
    void findAll_shouldThrowException_whenNoMembers() {
        when(dao.findAll()).thenReturn(Collections.emptyList());
        assertThrows(MemberNotFoundException.class, () -> resource.findAll());
    }

    @Test
    void findMember_shouldReturnMember_whenExists() {
        Member m = new Member();
        when(dao.findById(1)).thenReturn(Optional.of(m));

        ResponseEntity<Member> response = resource.findMember(1);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(m, response.getBody());
    }

    @Test
    void findMember_shouldThrowException_whenNotFound() {
        when(dao.findById(1)).thenReturn(Optional.empty());
        assertThrows(MemberNotFoundException.class, () -> resource.findMember(1));
    }

    @Test
    void save_shouldReturnCreatedMember() {
        Member m = new Member();
        when(dao.save(m)).thenReturn(m);

        ResponseEntity<Member> response = resource.save(m);

        assertEquals(HttpStatus.CREATED, response.getStatusCode());
        assertEquals(m, response.getBody());
    }

    @Test
    void update_shouldReturnUpdatedMember_whenExists() {
        Member m = new Member();
        when(dao.findById(1)).thenReturn(Optional.of(m));
        when(dao.save(m)).thenReturn(m);

        ResponseEntity<Member> response = resource.update(1, m);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(m, response.getBody());
        assertEquals(1, m.getId());
    }

    @Test
    void update_shouldThrowException_whenNotFound() {
        Member m = new Member();
        when(dao.findById(1)).thenReturn(Optional.empty());
        assertThrows(MemberNotFoundException.class, () -> resource.update(1, m));
    }

    @Test
    void delete_shouldReturnSuccessMessage() {
        doNothing().when(dao).deleteById(1);

        ResponseEntity<String> response = resource.delete(1);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals("Member successfully deleted !", response.getBody());
        verify(dao, times(1)).deleteById(1);
    }
}