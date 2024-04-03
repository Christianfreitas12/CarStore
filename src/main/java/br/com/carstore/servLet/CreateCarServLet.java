package br.com.carstore.servLet;

import br.com.carstore.dao.CarDao;
import br.com.carstore.model.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-car")
public class CreateCarServLet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {

        String carName = request.getParameter("carName");

        Car car = new Car(carName);
        CarDao carDao = new CarDao();

        carDao.createCar(car);

        //request.getRequestDispatcher("index.html").forward(request, resp);

        resp.sendRedirect("/find-all-cars");
    }
}
