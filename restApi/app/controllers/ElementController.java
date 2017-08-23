package controllers;

import models.Element;
import play.db.Database;
import play.libs.Json;
import play.mvc.Controller;
import play.mvc.Result;

import javax.inject.Inject;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Thien on 8/21/2017.
 */
public class ElementController extends Controller{
    private static final Element defaultElement = new Element("Search Again",-1,"-","-");
    private Database db;

    @Inject
    public ElementController(Database db) {
        this.db = db;
    }
    public Result element() throws SQLException {
        String searchTerm = request().getQueryString("name");
        //TODO - query database
        Connection con = db.getConnection();
        String sql = "Select * from PERIODIC_ELEMENTS WHERE LOWER(ELEMENT) LIKE ?";
        PreparedStatement stm = con.prepareStatement(sql);
        String queryParam = String.format("%%%s%%", searchTerm.toLowerCase());
        stm.setString(1, queryParam);
        ResultSet rs = stm.executeQuery();


        //TODO - bind result to model
        Element element = (rs.next() ? mapToElement(rs) : defaultElement);


        //TODO - convert model toJson

        return ok(Json.toJson(element));
    }

    public Result template() {
        return ok(views.html.template.render());
    }

    private Element mapToElement(ResultSet rs) throws SQLException{
        String element = rs.getString("ELEMENT");
        int atomicNumber = rs.getInt("ATOMIC_NUMBER");
        String symbol = rs.getString("SYMBOL");
        String metalGroup = rs.getString("METAL_GROUP");
        return new Element(element,atomicNumber,symbol,metalGroup);
    }
}
