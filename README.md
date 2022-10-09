I created the Expenses App, the expenses list, the expenses creator in LWC.
The expensesController, a trigger on expense creation that passes to a helper the task of creating the expenses instances.
There are 2 test classes that cover 95%

A dashboard that displays the pie chart based on an expenses report grouped by month and categories.
I created an expenses report grouped by category and month and year ("MMYYYY"), then created the pie graph.

About the recurrency, the requirements were a bit open in my opinion.
I created a picklist to choose from weekly or monthly.
The Due date is calculated from this field and the expense date. Its the next friday or next 15th.
And a field called Times, to know how many times in the future should the expense be repeated.
After creation, a trigger will generate the recurrent instances based on this field, the expense date and the recurrency picklist.


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
