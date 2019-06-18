(*!------------------------------------------------------------
 * [[APP_NAME]] ([[APP_URL]])
 *
 * @link      [[APP_REPOSITORY_URL]]
 * @copyright Copyright (c) [[COPYRIGHT_YEAR]] [[COPYRIGHT_HOLDER]]
 * @license   [[LICENSE_URL]] ([[LICENSE]])
 *------------------------------------------------------------- *)
unit HomeView;

interface

uses

    fano;

type

    (*!-----------------------------------------------
     * View instance
     *
     * @author [[AUTHOR_NAME]] <[[AUTHOR_EMAIL]]>
     *------------------------------------------------*)
    THomeView = class(TInjectableObject, IView)
    public

        (*!------------------------------------------------
         * render view
         *------------------------------------------------
         * @param viewParams view parameters
         * @param response response instance
         * @return response
         *-----------------------------------------------*)
        function render(
            const viewParams : IViewParameters;
            const response : IResponse
        ) : IResponse;
    end;

implementation

    (*!------------------------------------------------
     * render view
     *------------------------------------------------
     * @param viewParams view parameters
     * @param response response instance
     * @return response
     *-----------------------------------------------*)
    function THomeView.render(
        const viewParams : IViewParameters;
        const response : IResponse
    ) : IResponse;
    begin
        response.body().write(
            '<html><head><title>Home</title></head>' +
            '<body>' +
            '<p>Hello</p>' +
            '</body>' +
            '</html>'
        );
        result := response;
    end;

end.
