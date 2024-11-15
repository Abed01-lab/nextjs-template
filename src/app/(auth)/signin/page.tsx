import { Card, CardContent, CardFooter, CardHeader, CardTitle } from '@/components/ui/card';
import EmailPasswordForm from './components/emailPasswordForm';
import Providers from './components/providers';
import Link from 'next/link';

export default async function Page() {
  return (
    <div className="h-full w-full flex items-center justify-center">
      <Card className="w-full lg:w-2/6">
        <CardHeader>
          <CardTitle>Sign in to create-saas</CardTitle>
        </CardHeader>
        <CardContent className="space-y-3">
          <EmailPasswordForm />
          <p>
            Dont have an account,{' '}
            <Link className="underline text-blue-500" href="/signup">
              sign up here!
            </Link>
          </p>
        </CardContent>
        <CardFooter className="flex flex-col gap-3">
          <Providers />
        </CardFooter>
      </Card>
    </div>
  );
}
