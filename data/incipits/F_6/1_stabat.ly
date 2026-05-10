\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    b'8\f d16( b) b8 d16( b) a8 d16( a) a8 d16( a)
    g8 d'16( g,) g8 c c4 b
    as16 fis g8 b, a\trill g4 r
    b'8\p d16( b) b8 d16( b) a8 d16( a) a8 d16( a)
    g4 g8 c16 g fis4 g8 g
    g2 fis4 r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    b'8(-.\f b-. b-. g-.) a(-. a-. a-. f-.)
    g(-. g-. g-. g-.) fis4 g
    es8 d16( c) b8 a\trill g4 r
    b'8(-.\p b-. b-. g-.) a(-. a-. a-. f-.)
    g4. g,8 a4 d8 d
    e2 d4 r
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1*2
    r2 r4 d~^\solo
    d1~
    d8 g, c4. fis,8 b b
    b2 a4 a8 d
  }
}

TenoreLyrics = \lyricmode {
  Sta --

  bat ma -- ter do -- lo --
  ro -- sa iux -- ta
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    g'8(-.-\solo g-. g-. g-.) f(-. f-. f-. f-.)
    es(-. es-. es-. es-.) d4 g,
    c8 b16 c d8 d, g4 r
    g'8(-. g-. g-. g-.) f(-. f-. f-. f-.)
    es4 es8 es d4 g,
    cis2 d4 r
  }
}

BassFigures = \figuremode {
  r2 <6>
  <7>4. <6>8 <7 _+>2
  <6->8 <6> <4> <_+> r2
  r <6>
  <7>4 <6> <7 _+>2
  <7 5> <_+>
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
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics
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
