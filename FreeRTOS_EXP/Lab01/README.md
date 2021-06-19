# Lab01
將 FreeRTOS 移植到 STM32F407G-DISC1 平台上建置成功。

[FreeRTOS](https://www.freertos.org/)

- FreeRTOS 檔案加入專案
- 將 heap 實作改為 FreeRTOS heap4.c 移除 system.c
- 加入 FreeRTOSConfig.h
- 新增 Include 參考路徑
- 修改 FreeRTOSConfig.h
- 將 SYS 的時脈從 systick 改為其他 timer
