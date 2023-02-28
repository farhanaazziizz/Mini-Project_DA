select 
	a.OrderDate, a.ShipCountry, c.ProductName, b.UnitPrice, b.Quantity, b.Discount, 
	((b.UnitPrice-(b.UnitPrice*b.Discount))*b.Quantity) TotalPrice, f.CompanyName, f.City, f.Country
from
	Orders a
	join [Order Details] b
	on	a.OrderID = b.OrderID
	join Products c
	on b.ProductID = c.ProductID
	join Suppliers d
	on c.SupplierID = d.SupplierID
	join Shippers e
	on a.ShipVia = e.ShipperID
	join Customers f
	on a.CustomerID = f.CustomerID;