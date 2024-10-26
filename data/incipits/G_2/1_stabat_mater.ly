\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    d'2~ d4 b
    g g r es'~
    es d2 c4~
    c h c c~
    c b8[ a] b2
    a r
  }
}

SopranoLyrics = \lyricmode {
  Sta -- bat
  ma -- ter do --
  lo -- ro --
  _ sa, do --
  lo -- ro --
  sa
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 g'~
    g4 g g2
    fis g
    as4 g8[ f] g4 as8[ g]
    fis2 g
    fis r4 a
  }
}

AltoLyrics = \lyricmode {
  Sta --
  bat ma --
  ter do --
  lo -- _ ro -- _
  _ _
  sa "iux -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 b~
    b4 c es c8[ b]
    a4. d8 b4 es
    d2 es4. c8
    a!4 d2 e4~
    e d r2
  }
}

TenoreLyrics = \lyricmode {
  Sta --
  bat ma -- ter
  do -- lo -- ro -- _
  _ _ _
  _ _ _
  sa
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 g'~
    g4 es c c
    d2 es
    f4 g es8[ d] c4
    d2 g4 cis,
    d2 r
  }
}

BassoLyrics = \lyricmode {
  Sta --
  bat ma -- ter
  do -- lo --
  ro -- _ _ _
  _ _ _
  sa
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    r2 g'~
    g4 es c2
    d es
    f4 g es8 d c4
    d2 g4 cis,
    d2 r
  }
}

BassFigures = \figuremode {
  r1
  r4 <6>2.
  <9 _+>4 <8 \t> <7> <6>
  <6 5 _->4 <_!> <6> <6->8 <5>
  <7 5! _+>2. <7 5>4
  <9! _+> <8 \t>2.
}

\score {
  <<
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

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
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
