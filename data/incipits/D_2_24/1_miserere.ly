\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio ô grave"
    g'8([\p d)] b'( g) es'2
    d8([ g,)] h( d) as'2
    g8([ c,)] c'( a) fis4~ fis\trill
    g8 g,([ as)] a([ b!)] h( c8.[) d32( es)]
    b4 a\trill g8([\f d)] b'( g)
    es'2 es,8([\p c)] c'( a)
    a'2\f as
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio ô grave"
    d4\p r r8 c' c c
    b4 r r8 h h h
    c4 r r8 a!4~ a8
    d,4 es f! g~
    g fis g8([\f d)] b' g
    es'2 es,8(\p c) c'([ a)]
    a'4\f c, h2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \minor \time 4/4 \tempoMarkup "Adagio ô grave" \autoBeamOff
    R1*4
    r2 g'8[ d] b'[ g]
    es'4 es r2
    r8 c4 c8 h4 h
  }
}

SopranoLyrics = \lyricmode {
  Mi -- se --
  re -- re,
  mi -- se -- re -- re,
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \tempoMarkup "Adagio ô grave" \autoBeamOff
    R1*4
    r2 d4 g8[ b]
    a4 a r2
    r8 a4 a8 as4 as
  }
}

AltoLyrics = \lyricmode {
  Mi -- se --
  re -- re,
  mi -- se -- re -- re,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "Adagio ô grave" \autoBeamOff
    R1*4
    r2 b4^\tutti d
    c c r2
    r8 d4 d8 d4 d
  }
}

TenoreLyrics = \lyricmode {
  Mi -- se --
  re -- re,
  mi -- se -- re -- re,
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Adagio ô grave" \autoBeamOff
    R1*4
    r2 g'4. g8
    g4 g r2
    r8 fis4 fis8 f4 f
  }
}

BassoLyrics = \lyricmode {
  Mi -- se --
  re -- re,
  mi -- se -- re -- re,
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Adagio ô grave"
    g'4\p r r8 fis( fis fis)
    g4 r r8 f( f f)
    es4 r r8 es( d c)
    b!4 c d es8 c
    d4 d, \mvTr g\f-\tutti g'
    g2 r
    r8 fis4 fis8 f2
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r
  r
  <6 4 2>
  r8 <6 5>4. <6 4! _->2
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
