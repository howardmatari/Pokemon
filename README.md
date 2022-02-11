# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)


Visualforce Project
Teams will create a Pokémon Battler* that will use the Poke API and allow users to simulate battles
against Pokémon teams (including those from other orgs) through a Visualforce user interface.
Requirements
- Each team should create a Pokedex pulling information from the PokeAPI that will be surfaced
via Visualforce.
- Battling
o A user should be able to select a team of six Pokémon from the Pokedex to do battle.
o They should then be able to battle against either a team pulled from another org or a
randomly generated team of six.
o There should be some form of competition between the local team and the retrieved
team (although the parameters of this and the determination of the winner are up to
the team’s implementation/preferences).
- Pokémon Teams
o Each development team must expose a RESTful webservice containing one or more
prebuilt Pokémon teams (along with the relevant information for all included Pokémon)
that other orgs can consume.
o A user should be able to save Pokémon teams that they have created for use in later
battles.
In the process of accomplishing these requirements, each team member should
- Create a Visualforce page and associated custom Apex code (either through a custom controller
or controller extension).
As a whole, the team must have
- At least one Visualforce page that makes use of the <apex:param> standard component.
- At least one Visualforce page that overrides a standard button or action.
Future Implementations
- The team should make use of platform events that will be fired once a battle is completed.
These events should be handled by either an appropriate declarative tool or Apex trigger and
update a win-loss field on the team record (if it exists) with the result of the battle.
