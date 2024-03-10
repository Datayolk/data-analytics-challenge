# มาทำโปรเจค "Car Dealer" ด้วย SQL แบบในชีวิตจริงกัน

รันโปรเจคและดูชุดข้อมูลที่นี่
[Replit Link](https://replit.com/@me385/Car-Dealership-Datasets?v=1#main.sql)

### Q1: แสดงประเภทของรถยนต์ที่ขายได้ จากขายได้มากที่สุดไปน้อยที่สุด

ให้ดึงข้อมูลประเภทรถยนต์ (VehicleType) และจำนวนรถยนต์ที่ขายได้ COUNT(TransactionID) AS TotalSales เรียงลำดับจำนวนรถยนต์ที่ขายได้จากมากไปน้อย

- [Answer](/data-analytic/4/1.sql)

### Q2: ระบุพนักงานขาย (ชื่อ-นามสกุล) ที่ขายรถได้มากที่สุด และ ขายได้กี่คัน

ให้ดึงข้อมูลชื่อ-นามสกุล (FirstName, LastName) และจำนวนรถยนต์ที่ขายได้ COUNT(TransactionID) AS TotalTransactions

- [Answer](/data-analytic/4/2.sql)

### Q3: คำนวณยอดขายทั้งหมดของพนักงานขายแต่ละคน

ให้ดึงข้อมูลชื่อ-นามสกุล (FirstName, LastName) และยอดขายรวม (TotalRevenue) ของพนักงานแต่ละคน เรียงลำดับยอดขายรวมจากมากไปน้อย

- [Answer](/data-analytic/4/3.sql)

### Q4: ในปี 2023 ระหว่างรถพลังงานไฟฟ้า (Electric) หรือพลังงานเชื้อเพลิง (Petrol) แบบไหนได้รับความนิยมมากกว่ากัน

ให้ดึงข้อมูลประเภทพลังงานที่ใช้ FuelType และจำนวนขาย COUNT(TransactionID) AS TotalSales ของรถ ที่ Electric และรถ Petrol ในปี 2023

- [Answer](/data-analytic/4/4.sql)

### Q5: หัวหน้าทีมต้องการจัดหมวดหมู่ให้กับรถแต่ละโมเดล โดยมีเงื่อนไขว่า ถ้าราคาเท่ากับหรือมากกว่า 1 ล้านให้จัดเป็นรุ่น Flagship Model แต่ถ้าราคาต่ำกว่านั้นให้จัดเป็นรุ่น Normal Model

ให้ดึงข้อมูล ModelName และสร้างคอลัมน์ใหม่ให้ชื่อว่า ModelLabel แล้วเรียงลำดับตามตัวอักษร ModelName จากน้อยไปมาก

- [Answer](/data-analytic/4/5.sql)
