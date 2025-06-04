FROM n8nio/n8n:latest

# ตั้งค่า Environment Variables (หรือจะไปตั้งผ่านหน้าเว็บ Render ก็ได้)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=patcharapon.big@gmail.com
ENV N8N_BASIC_AUTH_PASSWORD=Deathnote1#
ENV N8N_HOST=n8n.hnomkeng.com
ENV WEBHOOK_URL=https://n8n.hnomkeng.com

# หากต้องการใช้ timezone ไทย:
ENV TZ=Asia/Bangkok

# สร้างโฟลเดอร์ข้อมูลให้แน่ใจว่ามี
RUN mkdir -p /home/node/.n8n
VOLUME /home/node/.n8n

# พอร์ตเริ่มต้น
EXPOSE 5678
