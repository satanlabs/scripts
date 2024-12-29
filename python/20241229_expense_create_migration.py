"""
CONETXT : https://satanlabs.atlassian.net/browse/LIFE-54

commands : 
pip3 install requests
pip3 install json
pip3 install logging
"""

import requests
import json
import logging
import datetime
import time

logger = logging.getLogger(__name__)
current_local_datetime = time.strftime("%Y%m%d_%H%M%S", time.localtime())
# logging.basicConfig(filename=current_local_datetime + '.log', encoding='utf-8', level=logging.INFO)


def callSaveExpenseApi(payload):
    print("callSaveExpenseApi() : START")
    url = "http://localhost:7980/nexus/price_tracker/expense/save?offset=0&from=admin-portal"

    payloadInJsonString = json.dumps(payload)
    headers = {
    'Authorization': 'some_token',
    'Content-Type': 'application/json'
    }

    response = requests.request("POST", url, headers=headers, data=payloadInJsonString)

    print("callSaveExpenseApi() : ", "response.status_code = ", response.status_code, " response.text = ", response.text)

    if(response.status_code == 200):
        return "OK"
    else:
        raise Exception("NON 200 received for ", payload)
    

def saveHouseRentData():
    data = [
        {
            "date": "2023-09-07",
            "amount": 17000,
            "note": "Aug-2023"
        },
        {
            "date": "2023-10-07",
            "amount": 17000,
            "note": "Sep-2023"
        },
        {
            "date": "2023-11-07",
            "amount": 17000,
            "note": "Oct-2023"
        },
        {
            "date": "2023-12-07",
            "amount": 17000,
            "note": "Nov-2023"
        },
        {
            "date": "2024-01-07",
            "amount": 17000,
            "note": "Dec-2023"
        },
        {
            "date": "2024-02-07",
            "amount": 17000,
            "note": "Jan-2024"
        },
        {
            "date": "2024-03-07",
            "amount": 17000,
            "note": "Feb-2024"
        },
        {
            "date": "2024-04-07",
            "amount": 17000,
            "note": "Mar-2024"
        },
        {
            "date": "2024-05-07",
            "amount": 17000,
            "note": "Apr-2024"
        },
        {
            "date": "2024-06-07",
            "amount": 17000,
            "note": "May-2024"
        },
        {
            "date": "2024-07-07",
            "amount": 17000,
            "note": "Jun-2024"
        },
        {
            "date": "2024-08-07",
            "amount": 19000,
            "note": "Jul-2024"
        },
        {
            "date": "2024-09-07",
            "amount": 19000,
            "note": "Aug-2024"
        }
    ]
    for item in data:
            print("=======================")
            print("saveHouseRentData() : ", item["date"], " ~ ", item["amount"])
            amount = item["amount"]
            dateAndTimeOfPurchase = item["date"] + " 09:00"
            extraNotes = "for_ejipura_house\n\nfor the month of " + item["note"] + "\npaid by gaurav\nadded from splitwise"
            payload = {
                "dateAndTimeOfPurchase": dateAndTimeOfPurchase,
                "extraNotes": extraNotes,
                "tags": "",
                "payment": {
                    "totalAmount": amount,
                    "paymentInstrument": "CASH",
                    "bank": None
                },
                "mode": "STORE_BOUGHT",
                "storeId": 12,
                "locationId": 37,
                "items": [
                    {
                    "productId": 306,
                    "quantity": "1",
                    "amount": "17000"
                    }
                ]
            }
            print("saveHouseRentData() : payload = ", payload)
            print("saveHouseRentData() : API response : ", callSaveExpenseApi(payload))
            print("saveHouseRentData() : ", "DONE for : ", item["date"])
            

def saveEjipuraCookData():
    data = [
        {
            "date": "2023-10-07",
            "amount": 5000,
            "note": "Sep-2023"
        },
        {
            "date": "2023-11-07",
            "amount": 5000,
            "note": "Oct-2023"
        },
        {
            "date": "2023-12-07",
            "amount": 5000,
            "note": "Nov-2023"
        },
        {
            "date": "2024-01-07",
            "amount": 5000,
            "note": "Dec-2023"
        },
        {
            "date": "2024-02-07",
            "amount": 5000,
            "note": "Jan-2024"
        },
        {
            "date": "2024-03-07",
            "amount": 5000,
            "note": "Feb-2024"
        },
        {
            "date": "2024-04-07",
            "amount": 5000,
            "note": "Mar-2024"
        },
        {
            "date": "2024-05-07",
            "amount": 5000,
            "note": "Apr-2024"
        },
        {
            "date": "2024-06-07",
            "amount": 5000,
            "note": "May-2024"
        },
        {
            "date": "2024-07-07",
            "amount": 5000,
            "note": "Jun-2024"
        },
        {
            "date": "2024-08-07",
            "amount": 5000,
            "note": "Jul-2024"
        },
        {
            "date": "2024-10-07",
            "amount": 5500,
            "note": "Sep-2024"
        },
        {
            "date": "2024-11-07",
            "amount": 5500,
            "note": "Oct-2024"
        }
    ]
    for item in data:
            print("=======================")
            print("saveEjipuraCookData() : ", item["date"], " ~ ", item["amount"])
            amount = item["amount"]
            dateAndTimeOfPurchase = item["date"] + " 09:00"
            extraNotes = "for_ejipura_house\n\nfor the month of " + item["note"] + "\npaid by gaurav to mukesh\nadded from splitwise partially"
            payload = {
                "dateAndTimeOfPurchase": dateAndTimeOfPurchase,
                "extraNotes": extraNotes,
                "tags": "",
                "payment": {
                    "totalAmount": amount,
                    "paymentInstrument": "CASH",
                    "bank": None
                },
                "mode": "STORE_BOUGHT",
                "storeId": 12,
                "locationId": 37,
                "items": [
                    {
                    "productId": 777,
                    "quantity": "1",
                    "amount": amount
                    }
                ]
            }
            print("saveEjipuraCookData() : payload = ", payload)
            print("saveEjipuraCookData() : API response : ", callSaveExpenseApi(payload))
            print("saveEjipuraCookData() : ", "DONE for : ", item["date"])

def saveEjipuraRoomMaidAuntyData():
    data = [
        {
            "date": "2024-01-07",
            "amount": 2000,
            "note": "Dec-2023"
        },
        {
            "date": "2024-03-07",
            "amount": 2000,
            "note": "Feb-2024"
        },
        {
            "date": "2024-04-07",
            "amount": 2500,
            "note": "Mar-2024"
        },
        {
            "date": "2024-05-07",
            "amount": 2500,
            "note": "Apr-2024"
        },
        {
            "date": "2024-06-07",
            "amount": 2500,
            "note": "May-2024"
        },
        {
            "date": "2024-07-07",
            "amount": 2500,
            "note": "Jun-2024"
        },
        {
            "date": "2024-08-07",
            "amount": 2500,
            "note": "Jul-2024"
        },
        {
            "date": "2024-09-07",
            "amount": 2500,
            "note": "Aug-2024"
        }
    ]
    for item in data:
            print("=======================")
            print("saveEjipuraRoomMaidAuntyData() : ", item["date"], " ~ ", item["amount"])
            amount = item["amount"]
            dateAndTimeOfPurchase = item["date"] + " 09:00"
            extraNotes = "for_ejipura_house\n\nfor the month of " + item["note"] + "\npaid by gaurav to yamuna-aunty\nadded from splitwise partially"
            payload = {
                "dateAndTimeOfPurchase": dateAndTimeOfPurchase,
                "extraNotes": extraNotes,
                "tags": "",
                "payment": {
                    "totalAmount": amount,
                    "paymentInstrument": "CASH",
                    "bank": None
                },
                "mode": "STORE_BOUGHT",
                "storeId": 12,
                "locationId": 37,
                "items": [
                    {
                    "productId": 505,
                    "quantity": "1",
                    "amount": amount
                    }
                ]
            }
            print("saveEjipuraRoomMaidAuntyData() : payload = ", payload)
            print("saveEjipuraRoomMaidAuntyData() : API response : ", callSaveExpenseApi(payload))
            print("saveEjipuraRoomMaidAuntyData() : ", "DONE for : ", item["date"])


def saveElectrictyBillData():
    data = [
        {
            "date": "2024-07-09",
            "amount": 570,
            "note": "June-2024"
        },
        {
            "date": "2024-06-18",
            "amount": 1148,
            "note": "May-2024"
        },
        {
            "date": "2024-05-26",
            "amount": 1022,
            "note": "April-2024"
        },
        {
            "date": "2024-04-07",
            "amount": 1404,
            "note": "March-2024"
        },
        {
            "date": "2024-02-10",
            "amount": 1204,
            "note": "January-2024"
        },
        {
            "date": "2023-09-07",
            "amount": 1988,
            "note": "Aug-2023"
        }
    ]
    for item in data:
            print("=======================")
            print("saveElectrictyBillData() : ", item["date"], " ~ ", item["amount"])
            amount = item["amount"]
            dateAndTimeOfPurchase = item["date"] + " 09:00"
            extraNotes = "for_ejipura_house\n\nfor the month of " + item["note"] + "\npaid by gaurav\nadded from splitwise partially"
            payload = {
                "dateAndTimeOfPurchase": dateAndTimeOfPurchase,
                "extraNotes": extraNotes,
                "tags": "",
                "payment": {
                    "totalAmount": amount,
                    "paymentInstrument": "CASH",
                    "bank": None
                },
                "mode": "STORE_BOUGHT",
                "storeId": 12,
                "locationId": 37,
                "items": [
                    {
                    "productId": 53,
                    "quantity": "1",
                    "amount": amount
                    }
                ]
            }
            print("saveElectrictyBillData() : payload = ", payload)
            print("saveElectrictyBillData() : API response : ", callSaveExpenseApi(payload))
            print("saveElectrictyBillData() : ", "DONE for : ", item["date"])


# saveHouseRentData() - done 20241229_1200

# saveEjipuraCookData() - done 20241229_1352

# saveEjipuraRoomMaidAuntyData() - done 20241229_1404

# saveElectrictyBillData() - done 20241229_1553
