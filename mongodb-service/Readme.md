### First Times Run 😉
# 1. docker-compose up

# 2. OPEN NEW TERMINAL: docker exec -it localmongo1 /bin/bash

# 3. mongo

# 4.
rs.initiate(
  {
    _id : 'rs0',
    members: [
      { _id : 0, host : "mongo1:27017" }
    ]
  }
)

# 5. enter key
# 6. rs.status()
# 7. IMPORT DATABASE 
    - Name: qlns
    - Table: bạn thêm vào thư mục + đưa lên git + rồi import nhé

### Run 😉
# 1. docker-compose start
# 2. docker exec -it localmongo1 /bin/bash
