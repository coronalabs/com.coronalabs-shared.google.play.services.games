local metadata =
{
    plugin =
    {
        format = 'jar',
        manifest = 
        {
            permissions = {},
            usesPermissions = {},
            usesFeatures = {},
            applicationChildElements = 
            {
                -- Meta-data for base logic layer
                [[
                <meta-data android:name="usesGooglePlayServicesComponentGames" android:value="true" />
                <activity android:name="com.google.android.gms.auth.api.signin.internal.SignInHubActivity"
                    android:excludeFromRecents="true" android:exported="false"
                    android:theme="@android:style/Theme.Translucent.NoTitleBar" />
                <!--
                    Service handling Google Sign-In user revocation. For apps that do not integrate with
                    Google Sign-In, this service will never be started.
                -->
                <service android:name="com.google.android.gms.auth.api.signin.RevocationBoundService"
                    android:exported="true" android:permission="com.google.android.gms.auth.api.signin.permission.REVOCATION_NOTIFICATION" />
                ]],
            },
        }
    },
    coronaManifest = {
        dependencies = {
            ["shared.google.play.services.drive"] = "com.coronalabs",
        },
    },
}

return metadata
