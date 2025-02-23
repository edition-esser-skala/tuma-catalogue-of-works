\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key es \major \time 4/4 \tempoMarkup "Adagio"
    r8 b'\p b b es2
    r8 b d f as2
    g8 b-!\fp g,( b) r as'-!\fp f,( as) \gotoBar "6"
    R1
    r2 r8 b'-!\fp g,( b)
    r as'-!\fp f,( as) g4 r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key es \major \time 4/4 \tempoMarkup "Adagio"
    r2 r8 g'\p b c
    d4 r r8 d f d
    es g-!\fp es,( g) r f'-!\fp d,( f) \gotoBar "6"
    R1
    r2 r8 g'-!\fp es,( g)
    r f'-!\fp d,( f) es4 r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key es \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1*3 \gotoBar "6"
    b'4~^\solo b16[ g] f[ es] c'2
    b4 r b2
    \grace b4 as2\trill g8 d' es g,
  }
}

SopranoLyrics = \lyricmode {
  Sal -- ve, sal --
  ve, sal --
  _ ve, sal -- ve "Re -"
}

Organo = {
  \relative c {
    \clef bass
    \key es \major \time 4/4 \tempoMarkup "Adagio"
    \mvTr es4\p-\solo r r8 es g as
    b4 r r8 b, d b
    es4\f r b' r \gotoBar "6"
    r8 es,\p es es r as as, as'
    g4 r g r
    d r es8 f g es
  }
}

BassFigures = \figuremode {
  r2. <6>4
  r2 r8 <7>4.
  r2 q
  r
  r
  <6 5>1
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
