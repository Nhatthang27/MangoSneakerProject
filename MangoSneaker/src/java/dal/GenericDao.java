/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.List;

/**
 *
 * @author catlinh
 */

public interface GenericDao<T> {
    int add(T obj);
    int update(T obj);
    int delete(T obj);
    List<T> getAll();
}