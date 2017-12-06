viron-endpoints-page-endpoint-signin-email.EndpointsPage_Endpoint_Signin_Email
  .EndpointsPage_Endpoint_Signin_Email__error(if="{ errorMessage }") { errorMessage }
  viron-textinput(placeholder="mail address" val="{ mailAddress }" onChange="{ handleMailAddressChange }")
  viron-textinput(placeholder="password" type="password" val="{ password }" onChange="{ handlePasswordChange }")
  viron-button(label="ログイン" theme="secondary" onSelect="{ handleSigninButtonSelect }")

  script.
    import '../../../../../components/viron-button/index.tag';
    import '../../../../../components/viron-textinput/index.tag';
    import script from './index';
    this.external(script);