component extends="framework.one" {

    this.sessionManagement = true;
    this.sessionTimeout = CreateTimeSpan(0,0,1,0);

    variables.framework = {
        reloadApplicationOnEveryRequest = true,
        trace = true
    };

    function setupApplication() {
        var bf = new framework.ioc("model");
        setBeanFactory(bf);
    }

}
