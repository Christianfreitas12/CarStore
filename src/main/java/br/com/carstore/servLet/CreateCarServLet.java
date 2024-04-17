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

        String carId = request.getParameter("id");
        String carName = request.getParameter("name");

        Car car = new Car(carId, carName);

        CarDao carDao = new CarDao();

        if(null == carId || carId.equals("")){
            carDao.createCar(car);
        }
        else{
            carDao.updateCar(car);
        }



        //request.getRequestDispatcher("index.html").forward(request, resp);

        resp.sendRedirect("/find-all-cars");
    }
}
