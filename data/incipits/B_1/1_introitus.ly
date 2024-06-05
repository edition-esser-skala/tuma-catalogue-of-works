\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    g'8\p as16( g) as( g) as( g) c2~
    c4 des16( c) des( c) h4. b8 \gotoBar "5"
    c4 r r2
    R1*2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    es4\p r es8 g16( f) g4~
    g8 f16 e f( es) f( es) d2 \gotoBar "5"
    c4 r r2
    R1*2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*2 \gotoBar "5"
    r2 c'4.^\solo c8
    h4 c c h
    c8 g es'16([ d) es( d)] c2
  }
}

SopranoLyrics = \lyricmode {
  Re -- qui --
  em ae -- ter -- _
  nam, ae -- "ter -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*2 \gotoBar "5"
    g'2.^\solo f4
    f es d2
    c4 r r8 g' as16([ g) as( g)]
  }
}

AltoLyrics = \lyricmode {
  Re -- qui --
  em ae -- ter --
  nam, ae -- "ter -"
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    \mvTr c4\p-\solo r c8 es16( d) es( d) es( c)
    as'2~ as8 g16 f g( f) g( f) \gotoBar "5"
    c8 c es16( d) es( c) as'2
    g4 as8 es f d g g,
    c4 r es c
  }
}

BassFigures = \figuremode {
  r1
  r
  r4 <6> <7> <6>
  <7 _!>2 <6 5>4 <_!>
  r2 <6>4 <6->8 <5>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
