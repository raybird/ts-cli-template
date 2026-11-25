import { Command } from 'commander';

async function main() {
    const program = new Command()
        .name('monorepo')
        .description('CLI for Monorepo')
        .version('1.0.0');

    program
        .command('build')
        .description('Build the monorepo')
        .action(async () => {
            console.log('Building...');
            // run your build steps ...
        });

    program
        .command('deploy')
        .description('Deploy the monorepo')
        .action(async () => {
            console.log('Deploying...');
            // run your deploy steps ...
        });

    await program.parseAsync(process.argv);
}

main().catch(console.error);