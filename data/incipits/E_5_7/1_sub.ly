\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Allabreve"
    h'1
    c
    h2 e~
    e dis
    e1~
    e2 d!~
    d4 d c2~
    c h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Allabreve"
    r2 g'
    e fis
    g h
    a1
    g2 g
    fis h4 a
    g1
    g2. fis4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 2/2 \tempoMarkup "Allabreve" \autoBeamOff
    h'1
    c
    h2 e
    e dis
    e e~
    e d!~
    d4 d c2~
    c h~
  }
}

SopranoLyrics = \lyricmode {
  Sub
  tu --
  um prae --
  si -- di --
  um con --
  fu --
  gi -- mus, __
  "San -"
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 2/2 \tempoMarkup "Allabreve" \autoBeamOff
    r2 g'
    e fis
    g h
    a2. a4
    g2 g
    fis h4 a
    g2 g~
    g2. fis4
  }
}

AltoLyrics = \lyricmode {
  Sub
  tu -- _
  um prae --
  si -- di --
  um con --
  fu -- gi -- _
  mus, San --
  cta
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 2/2 \tempoMarkup "Allabreve" \autoBeamOff
    e,1
    a
    g2 g
    a2. a4
    h1~
    h2 h
    e2. e4
    d2 d
  }
}

TenoreLyrics = \lyricmode {
  Sub
  tu --
  um prae --
  si -- di --
  um __
  con --
  fu -- gi --
  mus, "con -"
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 2/2 \tempoMarkup "Allabreve" \autoBeamOff
    R1*3
    r2 fis
    e4 fis g a
    h2 h,
    c4 d e fis
    g2 g,
  }
}

BassoLyrics = \lyricmode {
  Con --
  fu -- _ gi -- _
  mus, con --
  fu -- _ gi -- _
  mus, "San -"
}

Organo = {
  \relative c {
    \clef tenor
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Allabreve"
    e1
    a
    g
    a2 \clef bass fis
    e4 fis g a
    h2 h,
    c4 d e fis
    g2 g,
  }
}

BassFigures = \figuremode {
  r1
  <5>2 <6>
  r <6>
  r <6\\>
  r1
  <5 4>2 <\t 3>
  <10 9> <6>
  <5 4> <\t 3>
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
