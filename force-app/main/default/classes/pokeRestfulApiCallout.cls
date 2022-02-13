public class pokeRestfulApiCallout {

    public static void pokeQuery(String pokemonName){

        pokemonName.toLowerCase();

        HTTP http = new HTTP();

        HttpRequest hRequest = new HttpRequest();

        hRequest.setEndPoint('http://pokeapi.co/api/v2/pokemon/' + pokemonName);

        hRequest.setMethod('GET');

        HttpResponse response = http.send(hRequest);

        if (response.getStatusCode() != 200) return;

        JSONParser parser = JSON.createParser(response.getBody());

        String pokeName  = '';

        while (parser.nextToken() != null){

            if(parser.getNextToken() == JSONToken.FIELD_NAME){

                switch on parser.getText(){
                    when 'species' {
                        parser.NextValue();
                        parser.NextValue();
                        pokeName = parser.getText();
                        System.debug('Name: ' + pokeName);
                    }
                    when 'id' {
                        parser.NextValue();
                        System.debug('ID: ' + parser.getText());

                    
                    }
                }
            }
        }
     }
}

