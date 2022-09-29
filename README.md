# Michiapp

Michi app for AZUMO

## Getting Started

MICHIapp gives you a random cat from  [cataas](https://cataas.com/#/) every time you push the Meow button

## How i build this project

First, you need to create a basic skeleton of your app. What do you want your app to look like? Then create a sketch of it. I use the example in the integration part of the cataas [page](https://cataas.com/#/integration) as reference; here you can find an example app in [kotlin](https://github.com/allan8araujo/CatApp/tree/appCat)

So I created the Scaffold, the button and the container of the image and fitted the image to it to start with something.

<h1 align="center">
Display of cat and overview <br> <br>
 <img src="https://user-images.githubusercontent.com/60118368/192908888-28e68d0b-3eec-4ddb-9e08-8a817c85dd41.jpeg" width="25%"/>
</h1>  

The second part was to read about the Service Locator. That's because I have never heard about it, so I need to do some research about its use and some examples of it. Here is the first challenge.

With Service Locator, you can use it to connect your app with services or databases. That's what I understand, and you have control of every call of the service; in this case, I use the registerLazySingleton to use the API call. I think this was the most difficult part.

Let's talk about the API call. Here is the second problem, well, two of them.
How do I use the API if it only gives me the image as a response? I used to have the response in JSON but here you only get an image. So, how do I use this if it is a get request and you receive an image but the code response is 200 as a normal response? Of course, when you get the 200 code, the request is OK, so use the code as a trigger.


```JavaScript
    var dio = Dio();
    final resp = await dio.get(url);

    if(resp.statusCode==200)
      {
        print('ok');
        Catmodel cat =Catmodel(url);
       return  cat;


      }else {
      Catmodel cat =Catmodel('');
      return cat;
    }

```
Here is the Cat [class](/lib/models/cat.dart) only use a url atribute 

Another problem I face here is that, yes, you can make a call to the catass api, but it doesn't change, and with no change in the url, the variable that I use in [NetworkImage](lib/pages/Randomcat.dart) simply doesn't take the change and the image doesn't change, so the solution was to give the url a random parameter that the api doesn't need. So every time you call the function, you will get the same url but with a random parameter. The complete class looks like this.

```JavaScript
class GetImg{

  Future< Catmodel> getCatImg() async {
    String url = 'https://cataas.com/cat?height=300?t=${DateTime.now().millisecond}';

    var dio = Dio();
    final resp = await dio.get(url);

    if(resp.statusCode==200)
      {
      
        print('ok');
        Catmodel cat =Catmodel(url);
       return  cat;

      }else {
      
        Catmodel cat =Catmodel('');
        return cat;
      
    }
  }
}

```     

When I solved this problem, the next step was to call the API, save the result in a variable, and then use the Networkimage. Remember to use a StatefulWidget to rebuild the container with the new image.

<h1 align="center">
Final Result<br> <br>
 <img src="https://user-images.githubusercontent.com/60118368/192925107-b35fc661-53c4-4759-8e30-a362593bc4c8.gif" />
</h1>  
