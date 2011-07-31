/*
 * Copyright (c) Tony Sweets 2011.
 *
 * This file is part of OpenMFT.
 *
 * OpenMFT is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * OpenMFT is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with OpenMFT.  If not, see <http://www.gnu.org/licenses/>.
 */

package com.openmft.db;

import junit.framework.TestCase;
import org.h2.tools.DeleteDbFiles;
import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by IntelliJ IDEA.
 * User: tsweets
 * Date: 7/11/11
 * Time: 9:25 PM
 * To change this template use File | Settings | File Templates.
 */

public class TestCreateOpenMFTDB extends TestCase {

    @Test
    public void testStartUpH2() throws Exception {
        //todo Use the system temp dir
        DeleteDbFiles.execute("/tmp", "openmft", true);

        Class.forName("org.h2.Driver");
        Connection conn = DriverManager.getConnection("jdbc:h2:/tmp/openmft");
        Statement stat = conn.createStatement();

        // this line would initialize the database
        // from the SQL script file 'init.sql'
        stat.execute("runscript from 'classpath:init.sql'");

        ResultSet rs;
        rs = stat.executeQuery("select * from users");
        String rsName = null;
        while (rs.next()) {
            rsName = rs.getString("username");
            System.out.println(rsName);
        }
        stat.close();
        conn.close();
        assertEquals("admin",rsName);
    }
}
