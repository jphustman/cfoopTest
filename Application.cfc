component extends="one" {

    function setupApplication() {
        var bf = new ioc("model, services");
        setBeanFactory(bf);
    }

}
